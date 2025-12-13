#!/usr/bin/env python3
import torch.nn as nn
import torch.optim as optim
import torch
import handler

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

class MLPID:
	"""
	Represents a Machine Learning (ML) neural network that evaluates speed and error to infer auto-corrective speed adjustments 
	on a spline-path driving differential-drive robot. This class mimics a combined linear and angular PID controller.
	"""
	def __init__(self):
		root_dir = handler.get_ros_package_root("ROS_SplinePathMotionProfiling")
		self.model = self.load_model(root_dir + "/src/pid_model.pth")
		self.model.eval() # set to evaluate mode
		self.device = torch.device("cpu") # run with CPI

	def load_model(self, path):
		model = PIDNet() # ML architecture 
		state_dict = torch.load(path, map_location=torch.device("cpu"))
		model.load_state_dict(state_dict)
		return model
	
	def output(self, x_error: float, y_error: float, heading_error: float, linear_speed: float, angular_speed: float):
		# create pytorch tensor input 
		input = torch.tensor([[x_error, y_error, heading_error, linear_speed, angular_speed]], dtype=torch.float32)
		with torch.no_grad(): # no gradient / infer from network without backprop
			output = self.model(input)
		# infer speed adjustments and return results
		lin_adj = float(output[0,0])
		ang_adj = float(output[0,1])
		return (lin_adj, ang_adj)
