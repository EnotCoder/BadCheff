extends Control

signal chapter_selected(path: String)

func _ready() -> void:
	for child in get_children():
		if child is TextureButton:
			UIAnimations.setup_texture_button_hover(child)
	$chapter_one.pressed.connect(func() -> void: chapter_selected.emit("res://ACTS/ACT_1/scenes/act_1_prolog.tscn"))
	$chapter_two.pressed.connect(func() -> void: chapter_selected.emit("res://ACTS/ACT_2/scenes/act_2.tscn"))
