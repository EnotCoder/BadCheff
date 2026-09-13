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
	layer.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	add_child(layer)

	var blackout := ColorRect.new()
	blackout.color = Color.BLACK
	blackout.set_anchors_preset(Control.PRESET_FULL_RECT)
	blackout.mouse_filter = Control.MOUSE_FILTER_STOP
	blackout.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	layer.add_child(blackout)

	var skip_hint := Label.new()
	skip_hint.text = "Нажми, чтобы пропустить"
	skip_hint.set_anchors_preset(Control.PRESET_BOTTOM_WIDE)
	skip_hint.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	skip_hint.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	skip_hint.offset_top = -110
	skip_hint.offset_bottom = -60
	skip_hint.mouse_filter = Control.MOUSE_FILTER_IGNORE
	var font := load("res://widget/font.ttf")
	if font:
		skip_hint.add_theme_font_override("font", font)
	skip_hint.add_theme_font_size_override("font_size", 40)
	skip_hint.add_theme_color_override("font_color", Color(1, 1, 1, 0.7))
	blackout.add_child(skip_hint)

	intro_player.play()

	var skipped := [false]
	blackout.gui_input.connect(func(event: InputEvent) -> void:
		if event is InputEventMouseButton and event.pressed:
			skipped[0] = true
		elif event is InputEventScreenTouch and event.pressed:
			skipped[0] = true
	)

	var tree := get_tree()
	while intro_player.playing and not skipped[0]:
		if Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("left_click"):
			skipped[0] = true
			break
		await tree.process_frame
	intro_player.stop()

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
