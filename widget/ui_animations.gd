class_name UIAnimations

const DEFAULT_DURATION := 0.3

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
	var target_pos := node.position
	node.position = target_pos + offset
	node.modulate.a = 0.0
	node.show()
	var tw := node.create_tween().set_parallel(true)
	tw.tween_property(node, "position", target_pos, duration).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
	tw.tween_property(node, "modulate:a", 1.0, duration)
	await tw.finished

static func slide_out(node: CanvasItem, duration: float = DEFAULT_DURATION, offset := Vector2(0, 50)) -> void:
	var start_pos := node.position
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
	button.mouse_entered.connect(func(): _tween_scale(button, scale_amount))
	button.mouse_exited.connect(func(): _tween_scale(button, 1.0))

static func setup_texture_button_hover(button: TextureButton, scale_amount := 1.05) -> void:
	button.mouse_entered.connect(func(): _tween_scale(button, scale_amount))
	button.mouse_exited.connect(func(): _tween_scale(button, 1.0))

static func _tween_scale(node: CanvasItem, target: float) -> void:
	var tw := node.create_tween()
	tw.tween_property(node, "scale", Vector2.ONE * target, 0.15).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
