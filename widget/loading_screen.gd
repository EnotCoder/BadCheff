extends CanvasLayer

@onready var _label: Label = $Control/VBox/Label
@onready var _bar: ProgressBar = $Control/VBox/ProgressBar

func _ready() -> void:
	layer = 128

func set_progress(p: float) -> void:
	_bar.value = clampf(p, 0.0, 1.0) * 100.0

func _process(_delta: float) -> void:
	_label.modulate.a = 0.55 + 0.45 * sin(Time.get_ticks_msec() / 220.0)
