extends Control

var inv_show = false

func _process(_delta: float) -> void :
	if Input.is_action_just_pressed("inventory_move_up"):
		if MainInventoryScript.num_chose > 1: MainInventoryScript.num_chose -= 1
		else: MainInventoryScript.num_chose = 3
	if Input.is_action_just_pressed("inventory_move_down"):
		if MainInventoryScript.num_chose < 3: MainInventoryScript.num_chose += 1
		else: MainInventoryScript.num_chose = 1

	if Input.is_action_just_pressed("slot_1"): MainInventoryScript.num_chose = 1
	elif Input.is_action_just_pressed("slot_2"): MainInventoryScript.num_chose = 2
	elif Input.is_action_just_pressed("slot_3"): MainInventoryScript.num_chose = 3

	for slot in $item.get_children():
		var key: String = MainInventoryScript.slots[slot.name.to_int() - 1]
		if key:
			slot.texture = load("res://widget/arm/" + key + ".png")
		else:
			slot.texture = null

	for slot in $slot_tex.get_children():
		if slot.name == str(MainInventoryScript.num_chose):
			slot.texture_normal = load("res://widget/inventory item/active slot.jpg")
		else:
			slot.texture_normal = load("res://widget/inventory item/slot.jpg")

	var current_key: String = MainInventoryScript.slots[MainInventoryScript.num_chose - 1]
	if current_key:
		if Input.is_action_just_pressed("drop"):
			var item_node = MainInventoryScript.get_item_node(current_key)
			if item_node:
				item_node.global_transform = $"../../drop".global_transform
				item_node.freeze = false
				item_node.collision_layer = 2
				item_node.collision_mask = 2
				item_node.linear_velocity = Vector3.ZERO
				item_node.angular_velocity = Vector3.ZERO
				item_node.apply_central_impulse(item_node.transform.basis.z * -3)
			MainInventoryScript.slots[MainInventoryScript.num_chose - 1] = ""
			MainInventoryScript.remove_item_node(current_key)



func _on_slot_pressed() -> void:
	_press_and_release("slot_1")


func _on_slot_2_pressed() -> void:
	_press_and_release("slot_2")


func _on_slot_3_pressed() -> void:
	_press_and_release("slot_3")
	
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
