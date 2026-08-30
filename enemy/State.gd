extends Node

signal noise()
enum StateBook { IDLE, CHEAK, ATTACK }

var state: StateBook = StateBook.IDLE

var object_list_from_kithcen: Array = []
var object_list_from_room: Array = []

var position_point = "room"

var player
var Kithen = Vector3(-6.048, -0.774, 0.56)
var Room = Vector3(7.102, -0.774, 2.66)
var Frezz_room = Vector3(-12.29, -0.774, 0.56)

func set_noise():
	noise.emit()
