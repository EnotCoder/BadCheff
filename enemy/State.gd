extends Node

signal noise()
enum StateBook { IDLE, CHEAK, ATTACK }

var state: StateBook = StateBook.IDLE

var object_list_from_kitchen: Array = []
var object_list_from_room: Array = []

var position_point = "room"

var player
var Kitchen = Vector3(-6.048, -0.774, 0.56)
var Room = Vector3(7.102, -0.774, 2.66)
var Frezz_room = Vector3(-12.29, -0.774, 0.56)

var noise_sound: AudioStreamPlayer
var player_sound: AudioStreamPlayer
var audio_busy := false
var timer_active := false

func _ready():
	noise_sound = AudioStreamPlayer.new()
	noise_sound.stream = load("res://sounds/cheff/что_это_за_шум.mp3")
	noise_sound.bus = "Master"
	add_child(noise_sound)

func set_noise():
	if audio_busy or timer_active:
		noise.emit()
		return
	audio_busy = true
	await get_tree().create_timer(0.5).timeout
	noise_sound.play()
	await noise_sound.finished
	audio_busy = false
	noise.emit()
