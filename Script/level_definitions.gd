extends Node

var current_level = 1



var level_1 = [
	[0,1,0]
]

var level_2 = [
	
	[2,1,2],
	[1,2,1]

]

var level_3 = [
	[3,0,3],
	[1,2,1],
	[1,1,1]
]


var levels = [level_1, level_2, level_3]

func get_current_level():
	print(levels[current_level - 1])
	return levels[current_level - 1]
