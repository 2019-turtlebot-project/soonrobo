#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
#from detect_trackbar.msg import data
from sensor_msgs.msg import LaserScan
#from mode.msg import mode_msg, twist

PI = 3.141592
def start_publishing():
    global velocity_publisher
    if velocity_publisher is not None:
        return
    print("registering onto listenerpublisher")
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    

def parking(data):
    
    start_publishing()

    go(0.1,0.5,True)
    turn(90,90,True)
    go(0.1,0.1,True)
    turn(90,180,True)
    stop()
    go(0.1,0.1,True)
    turn(90,90,False)
    go(0.1,0.5,True)
#elif d == 'l':
    go(0.1,0.5,True)
    turn(90,90,False)
    go(0.1,0.1,True)
    turn(90,180,True)
    stop()
    go(0.1,0.1,True)
    turn(90,90,False)
    go(0.1,0.5,True)
def minni(d):
    i = 0
    mini=d.ranges[i]
    for num in d.ranges[i]:
        if num<mini:
            mini = num
            angle = i
    return mini
def qlry(x):
    if x<90 and x>0:
        d= 'r'
    if x<390 and x>270:
        d= 'l'
    return d
    
def go(speed,distance,isForward):

    print("Let's move your robot")
#Checking if the movement is forward or backwards
    if(isForward):
       vel_msg.linear.x = abs(speed)
    else:
       vel_msg.linear.x = -abs(speed)
#Since we are moving just in x-axis

    vel_msg.angular.z = 0

    #Setting the current time for distance calculus
    t0 = rospy.Time.now().to_sec()
    current_distance = 0

    #Loop to move the turtle in an specified distance
    while(current_distance < distance):
        #Publish the velocity
        velocity_publisher.publish(vel_msg)
        #Takes actual time to velocity calculus
        t1=rospy.Time.now().to_sec()
        #Calculates distancePoseStamped
        current_distance= speed*(t1-t0)
    #After the loop, stops the robot
    vel_msg.linear.x = 0
    #Force the robot to stop
    velocity_publisher.publish(vel_msg)
    rospy.sleep(1)
    
    
    
def turn(speed,angle,clockwise):
    
    print("Let's rotate your robot")

    angular_speed = speed*2*PI/360
    relative_angle = angle*2*PI/360
    vel_msg.linear.x=0

    if clockwise:
        vel_msg.angular.z = -abs(angular_speed)
    else:
        vel_msg.angular.z = abs(angular_speed)
    t0 = rospy.Time.now().to_sec()
    current_angle = 0

    while(current_angle < relative_angle):
        velocity_publisher.publish(vel_msg)
        t1 = rospy.Time.now().to_sec()
        current_angle = angular_speed*(t1-t0)

    vel_msg.angular.z = 0
    velocity_publisher.publish(vel_msg)
    rospy.sleep(1)
    
def stop():
    vel_msg.linear.x = 0
    vel_msg.angular.z = 0
    velocity_publisher.publish(vel_msg)
    rospy.sleep(3)


if __name__ == '__main__':
    rospy.init_node('park')

    vel_msg = Twist()
    rospy.Subscriber('/mode_msg',mode_msg,parking)
    rospy.spin()

