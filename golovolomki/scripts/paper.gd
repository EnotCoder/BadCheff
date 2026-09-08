extends Node3D

@export var texture_paper:Texture
@export var is_show:bool = true

@onready var rect: TextureRect = $UI/rect

func _input(event):
	if event is InputEventMouseButton and event.pressed and is_show:
		hide_paper()
	elif event is InputEventScreenTouch and event.pressed and is_show:
		hide_paper()

func show_paper() -> void:
	rect.texture = texture_paper
	is_show = true
	
func hide_paper() -> void:
	rect.texture = null
	is_show = false
