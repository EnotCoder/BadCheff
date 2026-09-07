extends Control

signal play_pressed

@onready var _fps_label: Label = $FPS

func _ready() -> void:
	for child in get_children():
		if child is Button:
			UIAnimations.setup_button_hover(child)

func _process(_delta: float) -> void:
	_fps_label.text = "FPS: " + str(Engine.get_frames_per_second())

func _on_play_pressed() -> void:
	play_pressed.emit()

func _on_exit_pressed() -> void:
	get_tree().quit()
