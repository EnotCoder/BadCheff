extends Node3D

@export var noise_duration: float = 5.0

var is_on := false

var generator_sound: AudioStreamPlayer

func _ready() -> void:
	generator_sound = AudioStreamPlayer.new()
	generator_sound.stream = load("res://sounds/фоновый звук.mp3")
	generator_sound.bus = "Master"
	add_child(generator_sound)

func toggle_door() -> void:
	is_on = not is_on
	if is_on:
		_start_noise()
	else:
		_stop_noise()

func _start_noise() -> void:
	State.noise_target = global_position
	generator_sound.play()
	await get_tree().create_timer(noise_duration).timeout
	if is_on:
		State.set_noise()
		_start_noise()

func _stop_noise() -> void:
	generator_sound.stop()
	State.noise_target = State.Kitchen
