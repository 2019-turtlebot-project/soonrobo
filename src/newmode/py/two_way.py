#!/usr/bin/env python
import rospy
import numpy as np
import cv2
from newmode.msg import msg_lane, msg_sign
class T():
	def __init__(self):
		self.lanepub = rospy.Publisher('/lane_msg', msg_lane, queue_size=1)
		self.signsub = rospy.Subscriber('/sign_msg',msg_sign, self.signmsg)
		self.lanemsg = msg_lane()
		self.sign = None
	def signmsg(self,a):
		self.sign = a.name
	def main(self):
		
		
		angle = None

		

		if self.sign == "RIGHT SIGN":
			x1_ye = msg.x1_ye
			y1_ye = msg.y1_ye
			x2_ye = msg.x2_ye
			y2_ye = msg.y2_ye
			angle = np.arctan2((y1 - y2) , (x1 - x2)) * (180/np.pi)

		if self.sign == "LEFT SIGN":
			x1_wh = msg.x1_wh
			y1_wh = msg.y1_wh
			x2_wh = msg.x2_wh
			y2_wh = msg.y2_wh
			angle = np.arctan2((y1 - y2) , (x1 - x2)) * (180/np.pi)

		if self.sign == "DONT GO":
			if self.sign == "RIGHT SIGN":
			    angle = np.arctan2((y1 - y2) , (x1 - x2)) * (180/np.pi)
			    self.lanemsg.angle = angle

			if self.sign == "LEFT SIGN":
			    angle = np.arctan2((y1 - y2) , (x1 - x2)) * (180/np.pi)
			    self.lanemsg.angle = angle

		if angle <= 180 and angle >= -180:
			if angle > 70 and angle < 110:
			    angle = 90 - angle

			else :
			    angle = angle / 2

		self.lanemsg.angle = angle        
		#rospy.loginfo("%f" %(self.lanemsg.angle))
		self.lanepub.publish(self.lanemsg)	    

		#if self.sign is not None:
			#sign_1= self.sign

if __name__ == '__main__':
	rospy.init_node('twist_ch')
	try:
		t =T()
		t.main()
	except rospy.ROSInterruptException:	pass




