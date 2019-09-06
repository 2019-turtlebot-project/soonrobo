#!/usr/bin/env python
import rospy
from sensor_msgs.msg import LaserScan
from newmode.msg import mode_msg, start, msg_lane, msg_detect



class test():
	def __init__(self):
		#init
		self.mode = mode_msg()
		self.mo = None
		self.angle = None#float
		self.bar = False
		self.traffic_light = False
		self.lane = False
		self.laser = False
		self.sin = False
		#subscriber
		#self.startsub = rospy.Subscriber('/start',start,self.starting)
		self.lanesub = rospy.Subscriber('/lane_msg', msg_lane, self.lanemsg)
		#self.lasersub = rospy.Subscriber('/scan',LaserScan, self.lasermsg)
		self.detectsub = rospy.Subscriber('/det_msg', msg_detect, self.detectmsg)
		#publshing
		self.modepub = rospy.Publisher('/mode_msg',mode_msg,queue_size=10)
		#self.modech()

	#def starting(self,d):
		  

	def modech(self):
		print("mode,lane",self.mode.mode,self.lane)
		if self.lane == True:
		#print("1")

			#mode=1,det use
			if self.bar == True:
				self.mode.mode = 1
				self.mode.cnt = 0
		    
			elif self.traffic_light == True:
				self.mode.mode = 1
				self.mode.cnt =1
			#mode=2,laser use
			#elif self.laser == True:
				#if self.bar == False and self.traffic_light == False:
					#self.mode.mode =2
					#self.mode.cnt =0
			#mode=0,lane
			elif self.sin == True:
				self.mode.mode = 0
				self.mod.cnt = 1
			else:
				self.mode.mode = 0
				self.mode.cnt = 0
        	#lane =False
		elif self.lane == False:
			self.mode.mode = 5
			self.mode.cnt = 5
		print("modecnt",self.mode.mode,self.mode.cnt,self.lane)
		self.modepub.publish(self.mode)
			#print("3")
	def lanemsg(self,a):
                self.modech()
		self.lane = a.sw
		self.angle= a.angle
		#print(a.sw,self.lane)
		#self.modech()
		print("lanemsg",a.sw,self.angle)
	#def lasermsg(self,a):
		#if a.range_min <= 0.5:
			#self.laser = False
	def detectmsg(self,a):
		self.bar = a.bar
		self.traffic_light = a.traffic_light
		print("bar",a.bar,self.bar,self.traffic_light)
def main():
	rospy.init_node('mode_ch')
	te = test()
	te.modech()
	rospy.spin()	

        
        
if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException: pass

    

