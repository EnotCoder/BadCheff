extends Control

@onready var logo: TextureRect = $Logo

func _ready() -> void:
	await get_tree().process_frame
	logo.modulate.a = 0.0
	logo.pivot_offset = logo.size / 2.0
	var start_scale := 0.7
	logo.scale = Vector2(start_scale, start_scale)

	var tween := create_tween().set_parallel(false)
	tween.set_ease(Tween.EASE_OUT)
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(logo, "modulate:a", 1.0, 1.0)
	tween.parallel().tween_property(logo, "scale", Vector2(1.0, 1.0), 1.0)
	tween.chain().tween_interval(2.0)
	tween.tween_property(logo, "modulate:a", 0.0, 0.5)
	tween.tween_callback(func(): get_tree().change_scene_to_file("res://ACTS/ACTS/menu.tscn"))
