#!/usr/bin/env python

import rospy, roslaunch
from geometry_msgs.msg import Twist
import sys, select, tty, termios, os



def getKey():

    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def getd():
    os.system("rosrun move_s telemove.py")

        

if __name__=="__main__":

    settings = termios.tcgetattr(sys.stdin)
    rospy.init_node('tunnel_node_controller')


    turtlebot3_model = rospy.get_param("model", "burger")



    try:
      
        while(1):
            key = input("input key :")
            if key == 1 :
                getd()
         

            else:
                if (key == '\x03'):
                    break

         

     

    except rospy.ROSInterruptException: pass
    finally:
     
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
