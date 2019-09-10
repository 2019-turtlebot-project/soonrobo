#!/usr/bin/env python 
import cv2
import rospy
import os
import numpy as np
from newmode.msg import msg_sine
orb = cv2.ORB_create()

class TrafficSign:
	def __init__(self):
		self.POriginal = []
		self.sine_msg = msg_sine()
		self.sinepub = rospy.Publisher('/sine_msg', msg_sine, queue_size=10)
		
	def set(self):
		self.out = []
		self.result = [0,0,0,0,0,0,0,0]
		self.num = 1

		self.PGray = []
		self.PResize = []
		self.PBlur = []
		self.PCanny = []
		self.Porbkp = []
		self.Porbdes = []
		
		#open to match trafficsigns
		self.P0Color = cv2.imread("/home/j/traffic/parkingimg1.jpg", cv2.IMREAD_COLOR)
		self.P1Color = cv2.imread("/home/j/traffic/leftsign.jpg", cv2.IMREAD_COLOR)
		self.P2Color = cv2.imread("/home/j/traffic/tunnel1.jpg", cv2.IMREAD_COLOR)
		self.P3Color = cv2.imread("/home/j/traffic/rl1.jpg", cv2.IMREAD_COLOR)
		self.P4Color = cv2.imread("/home/j/traffic/cross2.jpg", cv2.IMREAD_COLOR)
		self.P5Color = cv2.imread("/home/j/traffic/bar4.jpg", cv2.IMREAD_COLOR)
		self.P6Color = cv2.imread("/home/j/traffic/avoid5.jpg", cv2.IMREAD_COLOR)
		self.P7Color = cv2.imread("/home/j/traffic/cantgo1.jpg", cv2.IMREAD_COLOR)
		if self.P1Color is None or self.P2Color is None or self.P3Color is None or self.P4Color is None or self.P5Color is None or self.P6Color is None or self.P7Color is None or self.P0Color is None:
			print('no image')
			return 0		

		self.POriginal = [self.P0Color, self.P1Color, self.P2Color, self.P3Color, self.P4Color, self.P5Color, self.P6Color, self.P7Color]

		for size in range(len(self.POriginal)):	
			#resize
			self.PResize.append(cv2.resize(self.POriginal[size], dsize=(0, 0), fx=0.1, fy=0.1, interpolation=cv2.INTER_LINEAR))	
			#Grayscale
			self.PGray.append(cv2.cvtColor(self.PResize[size], cv2.COLOR_BGR2GRAY))
			#blur
			self.PBlur.append(cv2.medianBlur(self.PGray[size], 5))
			#canny
			self.PCanny.append(cv2.Canny(self.PBlur[size], 50, 200))
			#orb feature save
			print(size)	
		self.Parkkp, self.Parkdes  = orb.detectAndCompute(self.PCanny[0], None)
		self.Leftkp, self.Leftdes  = orb.detectAndCompute(self.PCanny[1], None)
		self.Tunnelkp, self.Tunneldes  = orb.detectAndCompute(self.PCanny[2], None)
		self.RLkp, self.RLdes  = orb.detectAndCompute(self.PCanny[3], None)
		self.Crosskp, self.Crossdes  = orb.detectAndCompute(self.PCanny[4], None)
		self.Barkp, self.Bardes  = orb.detectAndCompute(self.PCanny[5], None)
		self.Avoidkp, self.Avoiddes  = orb.detectAndCompute(self.PCanny[6], None)
		self.Cantgokp, self.Cantgodes  = orb.detectAndCompute(self.PCanny[7], None)
		
		
		
		self.Signskp = [self.Parkkp, self.Leftkp, self.Tunnelkp, self.RLkp, self.Crosskp, self.Barkp, self.Avoidkp, self.Cantgokp]
		self.Signsdes = [self.Parkdes, self.Leftdes, self.Tunneldes, self.RLdes, self.Crossdes, self.Bardes, self.Avoiddes, self.Cantgodes]


	#grayscale change	
	def gray(self, image):
		imgGray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
		return imgGray

	#blur median
	def medianblur(self, image):
		imgMedian = cv2.medianBlur(image, 5)
		return imgMedian

	#canny edge
	def cannyedge(self, image):
		imgCanny = cv2.Canny(image, 50, 200)
		return imgCanny

	#ORB
	def orb(self, image, imageC):
		#imgdrawkp = None
		self.imgorbkp, self.imgorbdes = orb.detectAndCompute(imageC, None)
		#imgdrawkp = cv2.drawKeypoints(image, self.imgorbkp, imgdrawkp,(0,0,255), flags=0)	

	#FLANN
	def flann(self, image, factor):
		matching = None
		matches = []
		gmatch = [[],[],[],[],[],[],[],[]]
		self.out = []
		sign = 0
		#FLANN_INDEX_KDTREE = 0 #sift
		FLANN_INDEX_LSH = 6 #orb
		#index_params = dict(algorithm=FLANN_INDEX_KDTREE, trees=5) #sift
		index_params = dict(algorithm=FLANN_INDEX_LSH, table_number=6, key_size=12, multi_probe_levle=1) #orb
		search_params = dict(checks=50) #if checks value up? slow
		flann = cv2.FlannBasedMatcher(index_params, search_params)
		#try:
		for des in self.Signsdes:
			matches.append(flann.knnMatch(des, self.imgorbdes, k=2))

		for match in matches: 				
			try:			
				for m, n in match:
					if m.distance < factor*n.distance:
						gmatch[sign].append(m)	
			except:
				print('no mathch')

			if len(gmatch[sign]) > 10:
				self.out.append(sign)
				matching = cv2.drawMatches(self.PResize[sign], self.Signskp[sign], image, self.imgorbkp, gmatch[sign], matching, flags=2)
			else:
				self.out.append('')
				matching = image	
			sign += 1
		print(self.out)
		cv2.imshow('match', matching)
			 			
	def findsign(self):
		while True:
			if '' in self.out:
				self.out.remove('')
			else:
				break
		if len(self.out) == 0:
			print('no match!!!!')
			self.result = [0,0,0,0,0,0,0,0]
			self.num = 1

		elif len(self.out) == 1:
			sign = self.out[0]
			if self.result[sign] == 0: 
				self.result = [0,0,0,0,0,0,0,0]
				self.result[sign] = 1
				self.num = 2
			elif self.result[sign] >= 1:
				self.result[sign] = self.num
				self.num += 1
			print(self.result)	
			
		elif len(self.out) == 2:
			sign1 = self.out[0]
			sign2 = self.out[1]
			if self.result[sign1] > 0:
				self.num += 1
				self.result[sign1] = self.num	
			elif self.result[sign2] > 0:
				self.num += 1
				self.result[sign2] = self.num	
			else:
				self.result = [0,0,0,0,0,0,0,0]
				self.num = 1
			print(self.result)	

		else:
			print(len(self.out))
		if self.result[0] > 8:
			print('PARKING SIGN')
			self.sine_msg.data = 'c'
			self.num = 1
		elif self.result[1] > 8:
			print('GO LEFT SIGN')
			self.sine_msg.data = 'g'
			print("sine_msg =".format(self.sine_msg.data))
			self.sinepub.publish(self.sine_msg)
			self.num = 1
		elif self.result[2] > 8:
			print('TUNNEL SIGN')
			self.num = 1
		elif self.result[3] > 8:
			print('RIGLEF SIGN')
			self.num = 1
		elif self.result[4] > 8:
			print('CROSS SIGN')
			self.num = 1
		elif self.result[5] > 8:
			print('TRAFBAR SIGN')
			self.num = 1
		elif self.result[6] > 8:
			print('AVOID SIGN')
			self.num = 1
		elif self.result[7] > 8:
			print('CANTGO SIGN')
			self.num = 1
		

def main():
	rospy.init_node('traff')
	t = TrafficSign()
	t.set()
	cap = cv2.VideoCapture('/home/j/traffic/test3.mp4')
	if cap.isOpened():
		print("success")
	else:
		return 0
	while 1:
		ret, frame = cap.read()
		if not ret:
			print('no frame')
			break	

		#grayscale
		frameG = t.gray(frame)	

		#choose one - blur
		frameM = t.medianblur(frameG)

		#canny	
		frameC = t.cannyedge(frameM)

		#orb
		t.orb(frame,frameC)
	
		#FLANN
		t.flann(frame, 0.7)

		#sign return
		t.findsign()
		#self.sinepub.publish(self.sine_msg)

		if cv2.waitKey(33) == ord('q'):
			cv2.destroyAllWindows()
			return 0
	cap.release()
if __name__ == "__main__":
	try:
		main()
	except TypeError as te:
		print("typeError", te)

	





