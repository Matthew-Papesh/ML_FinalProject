import torch
import torch.nn as nn
import torch.optim as optim
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from torch.utils.data import DataLoader, TensorDataset, Dataset, random_split

#define simple MLP to learn SPEED = f(error) for PID robot

class PIDNet(nn.Module):
	def __init__(self, input_size=5, hidden_size=64, output_size=2):
		super(PIDNet, self).__init__()
		#input layer to hidden layer 1
		# (x_error, y_error, heading_error, linear_speed, angular_speed)
		self.fc1 = nn.Linear(in_features=input_size, out_features=hidden_size)
  
		#Hidden layer 1 to hidden layer 2
		self.fc2 = nn.Linear(in_features=hidden_size, out_features=hidden_size)
  
		#hidden layer 2 to output layer 
		self.out = nn.Linear(in_features=hidden_size, out_features=output_size)
  
		#Activation for hidden layers
		self.relu = nn.ReLU()
  
	def forward(self, x):
		#hidden layer 1 + ReLU
		x = self.relu(self.fc1(x))
  
		#hidden layer 2 + ReLU
		x = self.relu(self.fc2(x))
  
		#output layer
		x = self.out(x)
		return x

#load CSV and combine
#err files
error_files = [
	'cl_fast_error_data.csv',
	'cl_slow_error_data.csv',
	'op_fast_error_data.csv',
	'op_slow_error_data.csv'
]

#speed adjustment files
speed_files = [
	'cl_fast_speed_adjustment_data.csv',
	'cl_slow_speed_adjustment_data.csv',
	'op_fast_speed_adjustment_data.csv',
	'op_slow_speed_adjustment_data.csv'
]

#load and concatenate data
error_dfs = [pd.read_csv(f) for f in error_files]
X = pd.concat(error_dfs, ignore_index=True).values.astype(np.float32)

speed_dfs = [pd.read_csv(f) for f in speed_files]
y = pd.concat(speed_dfs, ignore_index=True).values.astype(np.float32)

#sanity
assert len(X) == len(y), "Mismatched data! AAHHHH!"

#normalize
X_mean, X_std = X.mean(axis=0), X.std(axis=0) + 1e-8
X_norm = (X - X_mean) / X_std

#Data Loader
dataset = TensorDataset(torch.tensor(X_norm), torch.tensor(y))
train_loader = DataLoader(dataset, batch_size=32, shuffle=True)

#add model training function

def train_model(model, train_loader, num_epochs=50, lr=0.001):
	#loss = MSE
	criterion = nn.MSELoss()
	optimizer = optim.Adam(model.parameters(), lr=lr)
 
	#record losses for plot
	loss_history = []
  
	#training loop
	for epoch in range(num_epochs):
		running_loss = 0.0
		for batch_x, batch_y in train_loader:
			outputs = model(batch_x)
			loss = criterion(outputs, batch_y)
			#Zero the parameter gradients
			optimizer.zero_grad()
			loss.backward()
			optimizer.step()
	  
			running_loss += loss.item()

		#average loss for the epoch
		avg_loss = running_loss / len(train_loader)
		loss_history.append(avg_loss)
		print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {avg_loss:.6f}')
  
	print('Training complete')
	torch.save(model.state_dict(), 'pid_model.pth')
	print('Model saved as pid_model.pth')
 
	#plot loss history
	plt.figure(figsize=(8,5))
	plt.plot(loss_history)
	plt.xlabel('Epoch')
	plt.ylabel('MSE Loss')
	plt.title('Training Loss Curve')
	plt.grid(True)
	plt.show()
 
	return loss_history

#initialize and train model
model = PIDNet(input_size=5, hidden_size=64, output_size=2)
train_model(model, train_loader, num_epochs=50, lr=0.001)
 
#3d plot
model.eval()

lin_vals = np.linspace(-1.5, 1.5, 50)
ang_vals = np.linspace(-1.5, 1.5, 50)

LIN, ANG = np.meshgrid(lin_vals, ang_vals)

#build grid with 3 errs 
grid_points = np.stack([
	np.zeros_like(LIN),
	np.zeros_like(LIN),
	np.zeros_like(LIN),
	LIN,
	ANG
], axis=-1).reshape(-1, 5)	

#normalize
grid_norm = (grid_points - X_mean) / X_std

grid_tensor = torch.tensor(grid_norm, dtype=torch.float32)

with torch.no_grad():
	preds = model(grid_tensor).numpy()
 
Z = preds[:, 0].reshape(LIN.shape)

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(LIN, ANG, Z, linewidth=0, antialiased=True, alpha=0.85)

ax.set_title('Model Prediction Surface g(x)\n(Varying Linear & Angular Speed)')

ax.set_xlabel('Linear Speed Error')
ax.set_ylabel('Angular Speed Error')
ax.set_zlabel('Predicted Linear Speed Adjustment')

plt.tight_layout()
plt.show()

