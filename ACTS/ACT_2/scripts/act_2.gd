extends Node3D

func _ready() -> void:
	State.reset()
	MainInventoryScript.reset()
	Dialog.reset()
	_start_game()

func _start_game() -> void:
	YandexSDK.loading_ready()
	YandexSDK.gameplay_start()
	RenderingServer.force_draw()

func _on_back_to_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
