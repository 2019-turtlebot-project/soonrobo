#!/usr/bin/env python
import rospy
from newmode.msg import mode_msg, twist
from geometry_msgs.msg import Twist

_publishing = False
_pub = None

def start_publishing():
    global _pub
    if _pub is not None:
        return
    print("modete2 start")
    _pub = rospy.Publisher("cmd_vel", Twist, queue_size=10)

def callback(d):
    start_publishing()
    pub1 = Twist()
    pub1.linear.x = d.linear.x
    pub1.angular.z = d.angular.z

    print("1")
    _pub.publish(pub1)

    
def listener():

    rospy.init_node('twist_ch')
    rospy.Subscriber("/mode_twist", twist, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
    	listener()
    except rospy.ROSInterruptException: pass
