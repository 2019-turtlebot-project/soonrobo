#!/usr/bin/env python
import rospy
from newmode.msg import mode_msg, twist, msg_detect
class sensor():
    def __init__(self):
        self.twistpub = rospy.Publisher('/mode_twist', twist, queue_size=10)
        self.modesub = rospy.Subscriber('/mode_msg',mode_msg,self.modemsg)
        self.lasersub = rospy.Subscriber('/scan',LaserScan,self.lasermsg)
        self.vel_tw = twist()
        self.mode
        self.cnt
        self.ranges = []
        self.ranges_min
    def lasermsg(self,d):
        self.ranges = d.ranges[]
        self.ranges_min = self.min(self.ranges)
    def modemsg(self,d):
        self.mode = d.mode
        self.cnt = d.cnt 
        self.senmove()
        print(self.mode)

    def senmove(self):
        if self.rang_min <= 0.3:
            
            self.vel_tw.linear.x = 0
            self.vel_tw.angular.z = 1
        self.twistpub.publish(self.vel_tw)
    def 


if __name__ == '__main__':
    rospy.init_node('sensormove')
    start = sensor()
    rospy.spin()
