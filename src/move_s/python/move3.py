#!/usr/bin/env python
import rospy
#from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
#include "geometry_msgs/PoseStamped.h"
from geometry_msgs.msg import PoseStamped

#def callback(scan):
    #rospy.loginfo('scan.ranges[359]: %f %f',scan.ranges[359],vel.pose.orientation.w)


def move1():
    rospy.init_node('move3')
    #velocity_publisher = rospy.Publisher('cmd_vel', Twist, queue_size=10)
    
    #rospy.Subscriber('/scan', LaserScan, callback)
    #vel_msg = Twist()
   
    while not rospy.is_shutdown():
        vel.pose.position.x = 0;
        vel.pose.position.y = 0;
        vel.pose.orientation.w = 1.56;

        vel.header.stamp = rospy.Time.now().to_sec();
        vel.header.frame_id = "map";
        pub.publish(vel);


if __name__ == '__main__':
    rospy.init_node('move3')
    pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=10)
    vel = PoseStamped()
    i = 0
    try:
        #Testing our function
        while (1):
            vel.pose.position.x = 0;
            vel.pose.position.y = 0;
            vel.pose.orientation.w = 1.56;

            #vel.header.stamp = rospy.Time.now().to_sec();
            vel.header.frame_id = "map";
            pub.publish(vel);
            i = 1
    except rospy.ROSInterruptException: pass
