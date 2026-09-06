extends Node2D

func _ready() -> void:
	for btn in get_children():
		if btn is Button:
			UIAnimations.setup_button_hover(btn)

func show() -> void:
	visible = true
	await UIAnimations.pop_in($text)
	await UIAnimations.pop_in($restart, 0.25)
	await UIAnimations.pop_in($"go to menu", 0.3)

func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://ACTS/ACTS/act_1_prolog.tscn")

func _on_go_to_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
