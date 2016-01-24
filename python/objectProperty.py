#!/user/bin/env python
class Human(object):
	def __init__(self,input_gender):
		self.gender = input_gender
		selfGender = input_gender
	
	def printGender(self):
		print 'self.gender ', self.gender
	#	print 'selfGender ',selfGender

ttang = Human('male')
print 'ttang.gender',ttang.gender
ttang.printGender()
