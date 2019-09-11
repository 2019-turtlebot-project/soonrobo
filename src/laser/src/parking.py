#!/usr/bin/env python 
import rospy

from laser.msg import st
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import numpy as np

msg = st()

class park:
	def __init__(self):
		self.mode = None
		self.cap = None
		self.ret = None
		self.frame = None
		self.vel_msg = Twist()
		self.velocity_publisher = rospy.Publisher("cmd_vel", Twist, queue_size=10)
		self.calb = False
		self.check_r = False
		self.check_l = False
		
	def gos(self, a):
		self.vel_msg.linear.x = 0.2 * a
		self.vel_msg.angular.z = 0
		self.velocity_publisher.publish(self.vel_msg)

	def turn(self, a):
		self.vel_msg.linear.x = 0
		self.vel_msg.angular.z = a*(np.pi)/6
		self.velocity_publisher.publish(self.vel_msg)

	def stop(self):
		self.vel_msg.linear.x = 0
		self.vel_msg.angular.z = 0
		self.velocity_publisher.publish(self.vel_msg)
	
	def cont(self):
		change_gry = cv2.cvtColor(self.frame, cv2.COLOR_BGR2GRAY)
		edge = cv2.Canny(change_gry, 50, 150)
		if not edge:
			pass
		edge = cv2.bitwise_not(edge)
		image, contours, hie = cv2.findContours(edge.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
		nlabels, labels, stats, centroids = cv2.connectedComponentsWithStats(edge)
		for i in range(nlabels):
			if i < 2:
				continue

			area = stats[i, cv2.CC_STAT_AREA]
			left = stats[i, cv2.CC_STAT_LEFT]
			top = stats[i, cv2.CC_STAT_TOP]
			width = stats[i, cv2.CC_STAT_WIDTH]
			height = stats[i, cv2.CC_STAT_HEIGHT]

			if area > 50:
				cv2.rectangle(image, (left, top), (left + width, top + height), (0, 0, 255), 1)
				cv2.putText(image, str(i), (left + 20, top + 20), cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 0, 0), 2)
				if i >= 4:
					self.calb = True

	def callback(self, data):
		if data.ranges[90] >= 0.02 and data.ranges[90] <= 0.7	#detect left
			self.trun(-1)					#trun right
			rospy.sleep(3)
			self.gos(1)
			if data.ranges[90] >= 0.9
				self.stop()
				rospy.sleep(5)
				self.gos(-1)
				self.check_r = True
		elif data.ranges[330] >= 0.02 and data.ranges[330] <= 0.7 #detect right
			self.trun(1)					#trun left
			rospy.sleep(3)
			self.gos(1)
			if data.ranges[330] >= 0.9
				self.stop()
				rospy.sleep(5)
				self.gos(-1)
				self.check_l = True
		if self.check_r is True:
			self.trun(-1)
			rospy.sleep(3)
			self.gos(1)
		elif self.check_l is True:
			self.turn(1)
			rospy.sleep
			self.gos(1)

def main():
	park = park()
	park.cap = cv2.VideoCapture(0)
	park.cap.set(3, 320)
    	park.cap.set(4, 240)
    	if not park.cap.isOpened():
        	print("open fail camera")
	while not rospy.is_shutdown():
		park.ret, park.frame = park.cap.read()
		if park.calb == True:
			rospy.Subscriber("/scan", LaserScan, park.callback)

		if msg.mode == "PARK"
			park.trun(1)
	
