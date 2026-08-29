extends Node3D

@export var pos: Array[Vector3]

@export var say: String

var player_interaction_active = false

func act():
	if MainInventoryScript.chose_obj == "cook_handle":
		if !player_interaction_active: global_position = pos[1]
		else: global_position = pos[0]
		player_interaction_active = !player_interaction_active
	else:
		Diolog.set_hint("очень горячо")
