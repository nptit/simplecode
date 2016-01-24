#!/usr/bin/env python
class Bird(object):
	have_feather = True
	way_of_reproduction = 'egg'
	def move(self,x,y):
		position = [0,0]
		position[0] = position[0] + x
		position[1] = position[1] + y
		return position

summer = Bird()
print summer.way_of_reproduction
print summer.move(5,8)
