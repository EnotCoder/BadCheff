extends Node

var speech_text: String = ""
var hint_text: String = ""
var _hint_ready: bool = true

@onready var _say_timer: Timer = _make_timer(2.0)
@onready var _hint_timer: Timer = _make_timer(1.5)
@onready var _hint_cooldown: Timer = _make_timer(1.0)

func show_say(text: String) -> void:
	speech_text = text
	_say_timer.start()

func show_hint(text: String) -> void:
	if not _hint_ready:
		return
	hint_text = text
	_hint_ready = false
	_hint_timer.start()

# Timers
func _ready() -> void:
	_say_timer.timeout.connect(_clear_speech)
	_hint_timer.timeout.connect(_clear_hint)
	_hint_cooldown.timeout.connect(_unlock_hint)

func _make_timer(wait: float) -> Timer:
	var t := Timer.new()
	t.one_shot = true
	t.wait_time = wait
	add_child(t)
	return t

# Clear and Cooldowm
func _clear_speech() -> void:
	speech_text = ""

func _clear_hint() -> void:
	hint_text = ""
	_hint_cooldown.start()

func _unlock_hint() -> void:
	_hint_ready = true
