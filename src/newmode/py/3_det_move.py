#!/usr/bin/env python
import rospy
from newmode.msg import mode_msg, twist, msg_detect
class det():
    def __init__(self):
        self.twistpub = rospy.Publisher('/mode_twist', twist, queue_size=10)
        self.modesub = rospy.Subscriber('/mode_msg',mode_msg,self.modemsg)

        self.vel_tw = twist()
        
        self.mode = None
        self.cnt = None
        
        
    def modemsg(self,d):
        self.mode = d.mode
        self.cnt = d.cnt 
        self.detmove()
        print(self.mode)

    def detmove(self):
        print("",self.mode,self.cnt)
        if self.mode == 1:
            if self.cnt == 0:   
                self.stop()
                print("dddd")
            elif self.cnt ==1 :
                self.gos()
            self.twistpub.publish(self.vel_tw)
            

        
    def gos(self):
            self.vel_tw.linear.x = 0.1
            self.vel_tw.angular.z = 0

    def stop(self):
            self.vel_tw.linear.x = 0
            self.vel_tw.angular.z = 1




if __name__ == '__main__':
    rospy.init_node('det_move')
    start = det()
    rospy.spin()
    
