import torch
import torch.nn as nn
import torch.optim as optim

#define simple MLP to learn SPEED = f(error) for PID robot

class PIDNet(nn.Module):
	def __init__(self):
		super(PIDNet, self).__init__()
		#input layer to hidden layer 1
		self.fc1 = nn.Linear(in_features=3, out_features=64)
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