extends Node3D

func _ready() -> void :
	State.state = State.StateBook.IDLE
	State.position_point = "room"
	MainInventoryScript.reset()
	$Cheff.player_caught.connect(_on_player_caught)
	_start_game()

func _process(_delta: float) -> void:
	$FPSCounter/FPS.text = "FPS: " + str(Engine.get_frames_per_second())

func _start_game() -> void:
	YandexSDK.loading_ready()
	YandexSDK.gameplay_start()
	RenderingServer.force_draw()

func _on_player_caught() -> void:
	$player.queue_free()
	await get_tree().create_timer(1.2).timeout
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	$Cheff.get_node("you lost").show()


func f():
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
