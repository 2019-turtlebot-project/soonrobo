#!/usr/bin/env python
import rospy
import sys, os
#from sensor_msgs.msg import LaserScan
from newmode.msg import mode_msg, start, msg_lane, msg_detect ,msg_laser,msg_sign



class test():
	def __init__(self):
		#init
		self.mode = mode_msg()
		self.mo = None
		self.angle = None#float
		self.bar = False
		self.traffic_light = False
		self.lane_bool = False
		self.laser_bool = False
		self.sign2 = None
		self.sign = None
		#subscriber
		#self.startsub = rospy.Subscriber('/start',start,self.starting)
		self.lanesub = rospy.Subscriber('/lane_msg', msg_lane, self.lanemsg)
		self.lasersub = rospy.Subscriber('/msg_laser',msg_laser, self.lasermsg)
		self.detectsub = rospy.Subscriber('/det_msg', msg_detect, self.detectmsg)
		self.signsub = rospy.Subscriber('/sign_msg', msg_sign, self.signmsg)
		#publshing
		self.modepub = rospy.Publisher('/mode_msg',mode_msg,queue_size=10)
		self.sign_num= None

	def modech(self):
		#print("mode,lane",self.mode.mode,self.lane)
		if self.lane_bool == True:
		#print("1")

			#mode=1,det use
			if self.bar == True:
				self.mode.mode = 1
				self.mode.cnt = 0
		    
			elif self.traffic_light == True:
				self.mode.mode = 1
				self.mode.cnt =1
			#mode=2,laser use
			elif self.sign == 'AVOID SIGN':
				if self.laser_bool == True and self.bar == False and self.traffic_light == False:
					self.mode.mode =2
					self.mode.cnt =0
				else:
					self.mode.mode = 0
					self.mode.cnt = 0
			elif self.sign == 'LEFT SIGN' or self.sign == 'RIGHT SIGN ':
				self.mode.mode = 0
				self.mode.cnt = 1
			elif self.sign == 'CANTGO SIGN':
				self.mode.mode = 0
				self.mode.cnt = 2
			elif self.sign == 'PARKING SIGN':
				self.mode.mode = 0
				self.mode.cnt = 3
			elif self.sign == 'TUNNEL SIGN ':
				self.mode.mode = 3
				self.mode.cnt = 0
				os.system(" roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/soonrobo/map/map1.yaml")
				
			else:
				self.mode.mode = 0
				self.mode.cnt = 0
		#lane =False
		elif self.lane_bool == False:
			self.mode.mode = 5
			self.mode.cnt = 5
		print("mode:{}, cnt:{}, lane_bool:{}, sign:{}, signnum:{}".format(self.mode.mode,self.mode.cnt,self.lane_bool,self.sign,self.sign_num))
		self.modepub.publish(self.mode)
			#print("3")
	def lanemsg(self,a):
		self.modech()
		self.lane_bool = a.sw
		self.angle= a.angle
		#print(a.sw,self.lane)
		#print("lanemsg",a.sw,self.angle)
	def lasermsg(self,a):
		self.laser_bool = a.bool
		#print(a.bool,self.laser)
	def detectmsg(self,a):
		self.bar = a.bar
		self.traffic_light = a.traffic_light
		#print("bar",a.bar,self.bar,self.traffic_light)
	def signmsg(self,a):
		self.sign_num = a.data
		self.sign     = a.name
def main():
	rospy.init_node('mode_ch')
	te = test()
	te.modech()
	rospy.spin()	

        
        
if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException: pass

    

