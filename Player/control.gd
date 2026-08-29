extends Node2D



func _on_sit_pressed() -> void :
	Input.action_press("sit")
	Input.action_release("sit")


func _on_interact_pressed() -> void :
	Input.action_press("left_click")
	Input.action_release("left_click")


func _on_slot_pressed() -> void :
	Input.action_press("slot_1")
	Input.action_release("slot_1")


func _on_slot_2_pressed() -> void :
	Input.action_press("slot_2")
	Input.action_release("slot_2")


func _on_slot_3_pressed() -> void :
	Input.action_press("slot_3")
	Input.action_release("slot_3")


func _on_drop_pressed() -> void :
	Input.action_press("drop")
	Input.action_release("drop")
