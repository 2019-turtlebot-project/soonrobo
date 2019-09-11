#!/usr/bin/env python
import rospy
from newmode.msg import mode_msg, twist, msg_lane
import numpy as np

class test():
    def __init__(self):
        self.twistpub = rospy.Publisher('/mode_twist', twist, queue_size=10)
        self.lanesub = rospy.Subscriber('/lane_msg', msg_lane, self.lanemsg)
        self.modesub = rospy.Subscriber('/mode_msg',mode_msg, self.modemsg)
        
        self.vel_tw = twist()
        self.mode = None
        self.new_angle = None
        
    def modemsg(self,msg):
        self.mode = msg.mode
	print(msg.mode,msg.cnt)

    def lanemsg(self,msg):
        print(self.mode)
        if self.mode == 0:
            #print(self.mode)
            rospy.loginfo('angle: %s',msg.angle)
            if msg.angle >0:
                self.new_angle = msg.angle
            elif msg.angle <0:
                self.new_angle = msg.angle
            elif msg.angle == 0 :
                self.new_angle = 0  
            print("  ",self.new_angle)
            self.lane_go(self.new_angle)
            
            
    def lane_go(self,an):
        print("go")
        speed = an/10
        self.vel_tw.linear.x=0.1
        self.vel_tw.angular.z = speed
        self.twistpub.publish(self.vel_tw)


if __name__ == '__main__':
    
    rospy.init_node('lane_move')
    te = test()
    rospy.spin()
