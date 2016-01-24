#!/usr/bin/env python
class Bird(object):
	have_feather = True
	way_of_reproduction = 'egg'
	def move(self,x,y):
		position = [0,0]
		position[0] = position[0] + x
		position[1] = position[1] + y
		return position

class Chicken(Bird):
	way_of_move = 'walk'
	possible_in_KFC = True
	
	def move(self,x,y):
		position = [1,1]
		position[0] = position[0] + x
		position[1] = position[1] + y
		return position

class Oriole(Bird):
	way_of_move = 'fly'
	possible_in_KFC = False

	def move(self,x,y):
		position = [2,2]
		position[0] = position[0] + x
		position[1] = position[1] + y
		return position
summer = Chicken()
print summer.way_of_move
print summer.move(5,8)
