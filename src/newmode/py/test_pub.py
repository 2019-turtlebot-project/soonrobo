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
                det.bar = True
                det.traffic_light = False
                print("q")
            elif key == 'w':
                lane.sw = True
                lane.angle = 0
                det.bar = False
                det.traffic_light = True
                print("w")
            elif key == 'e':
                lane.sw = True
                lane.angle = 45
                det.bar = False
                det.traffic_light = False
                print("e")
            elif key == 'r':
                lane.sw=False
                print("r")     
            
            else :
                if (key == '\x03'):
                    break

            pub.publish(lane)
            pub_det.publish(det)
            pub_start.publish(starting)

    except rospy.ROSInterruptException: pass
       
