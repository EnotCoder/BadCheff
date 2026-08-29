extends Node2D


func _ready() -> void :
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED




func _on_play_pressed() -> void :
	get_tree().change_scene_to_file("res://ACTS/ACTS/act_1_prolog.tscn")


func _on_exit_pressed() -> void :
	get_tree().quit()
