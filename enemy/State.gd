extends Node

signal noise()

enum state_book{idle, cheak, attack}
var state = 0

var object_list_from_kithcen
var object_list_from_room

var position_point = "room"



var Player
var Kithen = Vector3(-6.048, -0.774, 0.56)
var Room = Vector3(7.102, -0.774, 2.66)
var Frezz_room = Vector3(-12.29, -0.774, 0.56)



func set_noise():
	noise.emit()
