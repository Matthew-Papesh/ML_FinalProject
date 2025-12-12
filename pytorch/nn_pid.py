import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset

#define simple MLP to learn SPEED = f(error) for PID robot

class PIDNet(nn.Module):
	def __init__(self):
		super(PIDNet, self).__init__()
		#input layer to hidden layer 1
		# (x_error, y_error, heading_error, linear_speed, angular_speed)
		self.fc1 = nn.Linear(in_features=5, out_features=64)
  
		#Hidden layer 1 to hidden layer 2
		self.fc2 = nn.Linear(in_features=64, out_features=64)
  
		#hidden layer 2 to output layer 
		self.out = nn.Linear(in_features=64, out_features=2)
  
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

#add model training function

def train_model(model, train_loader, num_epochs=50, lr=0.001):
	#loss = MSE
	criterion = nn.MSELoss()
	optimizer = optim.Adam(model.parameters(), lr=lr)
  
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
		print(f'Epoch [{epoch+1}/{num_epochs}], Loss: {avg_loss:.6f}')
  
	print('Training complete')
	torch.save(model.state_dict(), 'pid_model.pth')
	print('Model saved as pid_model.pth')