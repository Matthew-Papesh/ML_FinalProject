#!/usr/bin/env python3
import rospy
import numpy as np
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist 

class Main:
    def __init__(self):
        # create ros node
        rospy.init_node("main_node")
        # set speed setter / publisher; set odom subscriber 
        self.speed_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
        self.speed_sub = rospy.Subscriber("/cmd_vel", Twist, self.speed_listener)
        self.odom_sub = rospy.Subscriber("/odom", Odometry, self.odom_listener)
        self.rate = rospy.Rate(20) # set program rate 
        # set robot properties:
        self.odometry = None
        self.lin_speed = 0.0
        self.ang_speed = 0.0

    # define subscriber listeners
    def odom_listener(self, msg: Odometry):
        self.odometry = msg
    def speed_listener(self, msg: Twist):
        self.lin_speed = msg.linear
        self.ang_speed = msg.angular
    # define getters / setters 
    def get_odometry(self):
        return self.odometry
    def get_speed(self):
        return (self.lin_speed, self.ang_speed)
    def set_speed(self, lin_speed: float, ang_speed: float):
        update = lambda: (lin_speed != self.lin_speed or ang_speed != ang_speed)
        if not update():
            return
        twist = Twist() # publish speed update
        twist.linear.x = lin_speed
        twist.angular.z = ang_speed
        self.speed_pub.publish(twist)

    # main robot / program loop
    def run(self):
        self.speed_pub.publish()

# /Documents/ML_Project$ roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch 
if __name__ == "__main__":
    robot = Main() # create main node
    while not rospy.is_shutdown():
        # do stuff in program loop
        robot.set_speed(1, 0)
        print(f"lin: {robot.lin_speed}, ang: {robot.ang_speed}")
        robot.rate.sleep()
