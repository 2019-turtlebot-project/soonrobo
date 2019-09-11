#!/usr/bin/env python
import rospy
import sys, select, tty, termios
from geometry_msgs.msg import Twist
from newmode.msg import mode_msg , start, msg_detect, msg_lane, msg_sign



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

	rospy.init_node('test_pub_sign')
	pub = rospy.Publisher('/lane_msg', msg_lane, queue_size=10)
	pub_det = rospy.Publisher('/det_msg',msg_detect, queue_size = 10)
	pub_start = rospy.Publisher('/start',start, queue_size =10)
	signpub = rospy.Publisher('/sign_msg', msg_sign, queue_size=10)
	lane = msg_lane()
	sign_msg = msg_sign()
	det=msg_detect()
	starting = start()

	try:
		while(1):
			key = getKey()
			if key == '1':
				print('PARKING SIGN')      
				sign_msg.data = 1
				sign_msg.name = 'PARKING SIGN'
			elif key == '2':
				print('LEFT SIGN')      
				sign_msg.data = 2
				sign_msg.name = 'LEFT SIGN'
				#self.signpub.publish(self.sign_msg)
			elif key == '3':
				print('RIGLT SIGN ')     
				sign_msg.data = 3
				sign_msg.name = 'RIGLT SIGN '
				#self.signpub.publish(self.sign_msg)
			elif key == '4':
				print('TUNNEL SIGN')      
				sign_msg.data = 4
				sign_msg.name = 'TUNNEL SIGN '
				#self.signpub.publish(self.sign_msg)
			elif key == '5':
				print('CROSS SIGN')        
				sign_msg.data = 5
				sign_msg.name = 'CROSS SIGN'
				#self.signpub.publish(self.sign_msg)
			elif key == '6':
				print('TRAFBAR SIGN')
				sign_msg.data = 6
				sign_msg.name = 'TRAFBAR SIGN'
				#self.signpub.publish(self.sign_msg)
			elif key == '7':
				print('AVOID SIGN')
				sign_msg.data = 7
				sign_msg.name = 'AVOID SIGN'
				#self.signpub.publish(self.sign_msg)
			elif key == '8':
				print('CANTGO SIGN')
				sign_msg.data = 8
				sign_msg.name = 'CANTGO SIGN'
				#self.signpub.publish(self.sign_msg)
			elif key == '0':
				print('None')
				sign_msg.data = 0
				
				#self.signpub.publish(self.sign_msg)
			else :
				if (key == '\x03'):
					break

			pub.publish(lane)
			pub_det.publish(det)
			pub_start.publish(starting)
			signpub.publish(sign_msg)

	except rospy.ROSInterruptException: pass
       
