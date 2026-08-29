extends Node3D


func _ready() -> void :
	State.state = 0
	State.position_point = "room"
	MainInventoryScript.all = {"1": "", "2": "", "3": ""}
	MainInventoryScript.chose_obj = null
	MainInventoryScript.num_chose = 1


func f():
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
