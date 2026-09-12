extends Node3D

var _lightmap_with_basement: LightmapGIData = preload("res://ACTS/ACT_1/lightmap/act_1_prolog.lmbake")

func _ready() -> void :
	State.reset()
	MainInventoryScript.reset()
	Dialog.reset()
	$Cheff.player_caught.connect(_on_player_caught)
	$"active object/little object/lever".lever_activated.connect(_on_lever_activated)
	_start_game()
	_start_intro_blackout()

func _process(_delta: float) -> void:
	$FPSCounter/FPS.text = "FPS: " + str(Engine.get_frames_per_second())

func _start_game() -> void:
	YandexSDK.loading_ready()
	YandexSDK.gameplay_start()
	RenderingServer.force_draw()

func _start_intro_blackout() -> void:
	get_tree().paused = true

	var intro_player := AudioStreamPlayer.new()
	intro_player.stream = load("res://sounds/cheff/а_кто_это_проснулся.mp3")
	intro_player.bus = "Master"
	intro_player.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	add_child(intro_player)

	var layer := CanvasLayer.new()
	layer.layer = 100
	add_child(layer)
	var blackout := ColorRect.new()
	blackout.color = Color.BLACK
	blackout.set_anchors_preset(Control.PRESET_FULL_RECT)
	blackout.mouse_filter = Control.MOUSE_FILTER_STOP
	layer.add_child(blackout)

	intro_player.play()
	await intro_player.finished

	blackout.queue_free()
	layer.queue_free()
	intro_player.queue_free()
	get_tree().paused = false

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
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	$Cheff.get_node("CanvasLayer/you lost").show_screen()


func f():
	get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn")
