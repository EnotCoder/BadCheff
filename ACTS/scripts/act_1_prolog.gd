extends Node3D


func _ready() -> void :
	State.state = 0
	State.position_point = "room"
	MainInventoryScript.reset()


func f():
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
