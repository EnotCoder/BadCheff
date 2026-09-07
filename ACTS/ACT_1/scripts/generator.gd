extends Node3D

@export var noise_duration: float = 5.0

var is_on := false

var generator_sound: AudioStreamPlayer

func _ready() -> void:
	add_to_group("generator")
	generator_sound = AudioStreamPlayer.new()
	generator_sound.stream = load("res://sounds/generator.mp3")
	generator_sound.bus = "Master"
	add_child(generator_sound)

func toggle_door() -> void:
	if is_on:
		return
	is_on = true
	_start_noise()

func _start_noise() -> void:
	State.noise_target = global_position
	generator_sound.play()
	await get_tree().create_timer(noise_duration).timeout
	if is_on:
		State.set_noise()
		_start_noise()

func stop_noise() -> void:
	is_on = false
	generator_sound.stop()
