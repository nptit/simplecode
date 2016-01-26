#!/usr/bin/python
class Bird(object):
	have_feather = True;
	way_of_reproduction = 'egg';
	def move(self, dx, dy):
		position = [0,0];
		position[0] = position[0] + dx;
		position[1] = position[1] + dy;
		return position;

class Chicken(Bird):
    name = "baby";
    def __init__(self, more_words):
        self.gender = "nv";
        print ("happy ",more_words);

summer = Chicken("girl");
print ("name:", summer.name, "sex:", summer.gender);
print ('after move',summer.move(5,8));
