#!/usr/bin/env python
import rospy
import sys, select, tty, termios
from geometry_msgs.msg import Twist
from newmode.msg import mode_msg , start, msg_detect, msg_lane



def getKey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

if __name__=="__main__":

    settings = termios.tcgetattr(sys.stdin)
    
    rospy.init_node('test_pub')
    pub = rospy.Publisher('/lane_msg', msg_lane, queue_size=10)
    pub_det = rospy.Publisher('/det_msg',msg_detect, queue_size = 10)
    pub_start = rospy.Publisher('/start',start, queue_size =10)
    lane = msg_lane()
    det=msg_detect()
    starting = start()

    try:
        while(1):
            key = getKey()
            if key == 'q':
                lane.sw = True
                lane.angle = -45
                print("q")
            elif key == 'w':
                lane.sw = False
                print("w")
            elif key == 'a':
                det.bar = True
                print("a")
            elif key == 's':
                det.bar = False
                print("s")
            elif key == 'z':
                det.traffic_light = True
                print("z")
            elif key == 'x':
                det.traffic_light = False
                print("x")     
            
            else :
                if (key == '\x03'):
                    break

            pub.publish(lane)
            pub_det.publish(det)
            pub_start.publish(starting)

    except rospy.ROSInterruptException: pass
       
