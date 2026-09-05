extends Node3D

@onready var board: Node3D = $board
@onready var board_2: Node3D = $board2

func escape() -> void:
	if is_boards_break():
		if is_key_door():
			set_menu_scene()
		else:
			Dialog.show_hint("Мне нужен ключ")
	else:
		Dialog.show_hint("Мешают доски")
		
func is_boards_break() -> bool:
	return (not board.is_break and not board_2.is_break)

func is_key_door() -> bool:
	return (MainInventoryScript.chose_obj == "key_main_door")

func set_menu_scene() -> void:
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
