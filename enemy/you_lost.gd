extends Node2D

func _on_restart_pressed() -> void :
	get_tree().change_scene_to_file("res://ACTS/ACTS/act_1_prolog.tscn")


func _on_go_to_menu_pressed() -> void :
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
