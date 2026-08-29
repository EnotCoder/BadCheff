extends Node3D


func _ready() -> void :
	State.state = State.StateBook.IDLE
	State.position_point = "room"
	MainInventoryScript.reset()
	$Cheff.player_caught.connect(_on_player_caught)


func _on_player_caught() -> void:
	$player.queue_free()
	await get_tree().create_timer(1.2).timeout
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	$Cheff.get_node("you lost").show()


func f():
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
