extends Node2D

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
			slot.texture = load("res://widget/inventory item/active slot.jpg")
		else:
			slot.texture = load("res://widget/inventory item/slot.jpg")

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

func arm_widget(num):
	var a
	if MainInventoryScript.slots[num - 1]:
		a = load("res://widget/arm/" + MainInventoryScript.slots[num - 1] + ".png")
	else:
		a = load("res://widget/arm/null.png")
	return a
