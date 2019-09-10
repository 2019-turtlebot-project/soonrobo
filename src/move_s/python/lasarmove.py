#!/usr/bin/env python
import rospy
#from fm.msg import twist
#from detect_trackbar.msg import data
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import numpy as np
#PI=3.141592
velpub = None
vel_msg = Twist()

def start_pub():
    global velpub, vel_msg
    if velpub is not None:
        return
    print("lasarmove start")
    velpub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=1)
    vel_msg = Twist()
    
def callback(data):
#    start_pub()
    rospy.loginfo('scan.ranges[359]: %s',data.ranges[359])
    rospy.sleep(1)
#    if data.ranges[359] < 0.2:   
#        move1()
#        
#    else :
#        gos(1)
   

    
    
    
def gos(sec):
    con = 1
    while con <= sec:
        print("go",con)
        vel_msg.linear.x = 0.1
        vel_msg.angular.z = 0
        
        velpub.publish(vel_msg)
        #rospy.sleep(1)
        con = con+1
def turn(a,sec):
    con = 1
    while con <= sec:
        print("turn",con)
        vel_msg.linear.x = 0
        vel_msg.angular.z = a*(np.pi)/6
        #rospy.sleep(sec)
        velpub.publish(vel_msg)
        #rospy.sleep(1)
        con = con+1
def stop(sec):
    con = 1
    while con <= sec:
        print("stop",con)
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        #rospy.sleep(sec)
        velpub.publish(vel_msg)
        #rospy.sleep(1)
        con = con+1
        
def move1():
    
    stop(2)
    turn(1,3)
    stop(2)
    gos(10)
    stop(2)
    turn(-1,3)
    stop(2)
    gos(10)   
    #velocity_publisher.publish(vel_msg)
        





if __name__ == '__main__':
    rospy.init_node('move')
    rospy.Subscriber('/scan', LaserScan, callback)
    rospy.spin()
      
  
    #try:
        #Testing our function
        #while(1):
            #move1()

          
    #except rospy.ROSInterruptException: pass
