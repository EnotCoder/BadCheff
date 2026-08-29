extends Control

var time = 10

var time_wait = false

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

func test_room(list):
	for obj in list:
		if obj.player_interaction_active and State.state == State.StateBook.CHEAK:
			State.state = State.StateBook.ATTACK
			Dialog.show_say(obj.say)
			break

func _on_timer_timeout() -> void :
	State.state = State.StateBook.CHEAK
	test_room(State.object_list_from_room)

	if 	State.state != State.StateBook.ATTACK: Dialog.show_say("Откуда был шум!?")
	await get_tree().create_timer(5).timeout
	if 	State.state != State.StateBook.ATTACK: Dialog.show_say("Что-то не так")
	await get_tree().create_timer(5).timeout

	test_room(State.object_list_from_kithcen)

	if 	State.state != State.StateBook.ATTACK:
		Dialog.show_say("Странно всё на месте")
		State.state = State.StateBook.IDLE
	time_wait = false
