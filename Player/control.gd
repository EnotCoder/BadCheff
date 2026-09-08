extends Node2D

func _press_and_release(action: StringName) -> void:
	var a = InputEventAction.new()
	a.action = action
	a.pressed = true
	Input.parse_input_event(a)
	
	# Give it a frame to be processed by consumers like is_action_just_pressed
	await get_tree().process_frame
	
	var b = InputEventAction.new()
	b.action = action
	b.pressed = false
	Input.parse_input_event(b)


func _on_sit_pressed() -> void:
	_press_and_release("sit")


func _on_interact_pressed() -> void:
	_press_and_release("left_click")


func _on_slot_pressed() -> void:
	_press_and_release("slot_1")


func _on_slot_2_pressed() -> void:
	_press_and_release("slot_2")


func _on_slot_3_pressed() -> void:
	_press_and_release("slot_3")


func _on_drop_pressed() -> void:
	_press_and_release("drop")
