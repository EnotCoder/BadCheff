extends Control

var time = 10

var time_wait = false

var sound_tak_pogodika: AudioStreamPlayer
var sound_pokazalos: AudioStreamPlayer
var sound_aga: AudioStreamPlayer

func _ready():
	sound_tak_pogodika = AudioStreamPlayer.new()
	sound_tak_pogodika.stream = load("res://sounds/cheff/так_погодика.mp3")
	sound_tak_pogodika.bus = "Master"
	add_child(sound_tak_pogodika)

	sound_pokazalos = AudioStreamPlayer.new()
	sound_pokazalos.stream = load("res://sounds/cheff/показалось.mp3")
	sound_pokazalos.bus = "Master"
	add_child(sound_pokazalos)

	sound_aga = AudioStreamPlayer.new()
	sound_aga.stream = load("res://sounds/cheff/ага.mp3")
	sound_aga.bus = "Master"
	add_child(sound_aga)

func set_timer():
	$Timer.start()

func _process(_delta: float) -> void :
	$"cheffs say".text = Dialog.speech_text
	$hint.text = Dialog.hint_text
	$Label.text = str(int($Timer.time_left))

	if str(int($Timer.time_left)) != "0" and 	State.state != State.StateBook.ATTACK: $Label.show()
	else: $Label.hide()

func p():
	var timer = $Timer
	var timer_int = int($Timer.time_left)

	if timer_int == 0 and time_wait == false:
		timer.wait_time = time
		timer.start()
		time_wait = true
		State.timer_active = true

func test_room(list):
	for obj in list:
		if obj.player_interaction_active and State.state == State.StateBook.CHEAK:
			State.state = State.StateBook.ATTACK
			Dialog.show_say(obj.say)
			break

func _on_timer_timeout() -> void :
	State.state = State.StateBook.CHEAK
	test_room(State.object_list_from_room)

	var cheff = get_tree().get_first_node_in_group("cheff")
	if cheff:
		await cheff.arrived

	State.audio_busy = true
	Dialog.show_say("Так, погодика, что-то сдесь не так. Сдесь кто-то был?", sound_tak_pogodika.stream.get_length())
	sound_tak_pogodika.play()
	await sound_tak_pogodika.finished

	await get_tree().create_timer(2.0).timeout

	test_room(State.object_list_from_kitchen)

	if State.state != State.StateBook.ATTACK:
		Dialog.show_say("Видимо показалось", sound_pokazalos.stream.get_length())
		sound_pokazalos.play()
		await sound_pokazalos.finished
		State.state = State.StateBook.IDLE
	else:
		sound_aga.play()
		await sound_aga.finished

	State.audio_busy = false
	State.timer_active = false
	time_wait = false
