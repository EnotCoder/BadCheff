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
	get_tree().paused = true

	var curse_player := AudioStreamPlayer.new()
	curse_player.stream = load("res://sounds/cheff/будь_ты_проклят.mp3")
	curse_player.bus = "Master"
	curse_player.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	add_child(curse_player)

	var layer := CanvasLayer.new()
	layer.layer = 100
	add_child(layer)
	var blackout := ColorRect.new()
	blackout.color = Color.BLACK
	blackout.set_anchors_preset(Control.PRESET_FULL_RECT)
	blackout.mouse_filter = Control.MOUSE_FILTER_STOP
	layer.add_child(blackout)

	curse_player.play()
	await curse_player.finished

	blackout.queue_free()
	layer.queue_free()
	curse_player.queue_free()
	get_tree().paused = false
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
