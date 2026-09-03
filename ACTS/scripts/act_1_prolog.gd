extends Node3D

var _lightmap_with_basement: LightmapGIData = preload("res://ACTS/ACTS/act_1_prolog.lmbake")

func _ready() -> void :
	State.state = State.StateBook.IDLE
	State.position_point = "room"
	MainInventoryScript.reset()
	$Cheff.player_caught.connect(_on_player_caught)
	$"active object/little object/lever".lever_activated.connect(_on_lever_activated)
	_start_game()

func _process(_delta: float) -> void:
	$FPSCounter/FPS.text = "FPS: " + str(Engine.get_frames_per_second())

func _start_game() -> void:
	YandexSDK.loading_ready()
	YandexSDK.gameplay_start()
	RenderingServer.force_draw()

func _on_lever_activated() -> void:
	$LightmapGI.light_data = _lightmap_with_basement
	$BasementWall.get_node("CollisionShape3D").disabled = true
	$BasementTrigger.get_node("CollisionShape3D").disabled = true

func _on_basement_trigger_body_entered(body: Node3D) -> void:
	if body.name == "player":
		Dialog.show_hint("Тёмно... Нужно включить свет")

func _on_player_caught() -> void:
	$player.queue_free()
	await get_tree().create_timer(1.2).timeout
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	$Cheff.get_node("you lost").show()


func f():
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
