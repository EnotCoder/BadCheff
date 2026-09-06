class_name UIAnimations

const DEFAULT_DURATION := 0.3

static var _click_sound: AudioStreamPlayer

static func _get_click_sound() -> AudioStreamPlayer:
	if _click_sound == null:
		_click_sound = AudioStreamPlayer.new()
		_click_sound.stream = load("res://sounds/кнопка.mp3")
		_click_sound.bus = "Master"
		Engine.get_main_loop().root.add_child(_click_sound)
	return _click_sound

static func play_click() -> void:
	_get_click_sound().play()

static func fade_in(node: CanvasItem, duration: float = DEFAULT_DURATION) -> void:
	node.modulate.a = 0.0
	node.show()
	var tw := node.create_tween()
	tw.tween_property(node, "modulate:a", 1.0, duration)
	await tw.finished

static func fade_out(node: CanvasItem, duration: float = DEFAULT_DURATION) -> void:
	var tw := node.create_tween()
	tw.tween_property(node, "modulate:a", 0.0, duration)
	await tw.finished
	node.hide()

static func slide_in(node: CanvasItem, duration: float = DEFAULT_DURATION, offset := Vector2(0, 50)) -> void:
	var target_pos: Vector2 = node.position as Vector2
	node.position = target_pos + offset
	node.modulate.a = 0.0
	node.show()
	var tw := node.create_tween().set_parallel(true)
	tw.tween_property(node, "position", target_pos, duration).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
	tw.tween_property(node, "modulate:a", 1.0, duration)
	await tw.finished

static func slide_out(node: CanvasItem, duration: float = DEFAULT_DURATION, offset := Vector2(0, 50)) -> void:
	var start_pos: Vector2 = node.position as Vector2
	var tw := node.create_tween().set_parallel(true)
	tw.tween_property(node, "position", start_pos + offset, duration).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CUBIC)
	tw.tween_property(node, "modulate:a", 0.0, duration)
	await tw.finished
	node.hide()
	node.position = start_pos

static func pop_in(node: CanvasItem, duration: float = 0.2) -> void:
	node.scale = Vector2.ZERO
	node.modulate.a = 0.0
	node.show()
	var tw := node.create_tween().set_parallel(true)
	tw.tween_property(node, "scale", Vector2.ONE, duration).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_BACK)
	tw.tween_property(node, "modulate:a", 1.0, duration * 0.5)
	await tw.finished

static func setup_button_hover(button: Button, scale_amount := 1.05) -> void:
	var original := button.scale
	button.mouse_entered.connect(func(): _tween_scale(button, original * scale_amount))
	button.mouse_exited.connect(func(): _tween_scale(button, original))
	button.pressed.connect(play_click)

static func setup_texture_button_hover(button: TextureButton, scale_amount := 1.05) -> void:
	var original := button.scale
	button.mouse_entered.connect(func(): _tween_scale(button, original * scale_amount))
	button.mouse_exited.connect(func(): _tween_scale(button, original))
	button.pressed.connect(play_click)

static func _tween_scale(node: CanvasItem, target: Vector2) -> void:
	var tw := node.create_tween()
	tw.tween_property(node, "scale", target, 0.15).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
