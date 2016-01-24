#!/usr/bin/env python
class Bird(object):
	have_feather = True
	way_of_reproduction = 'egg'

	def say(self):
		print 'hhhhhhhh'

	def move(self):
		print self.have_feather
		self.say()
summer = Bird()
summer.move()
