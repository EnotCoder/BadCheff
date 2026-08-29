extends Node2D

var inv_show = false


var obj
var drop_obj

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
		if MainInventoryScript.all[slot.name]:
			slot.texture = load("res://widget/arm/" + MainInventoryScript.all[slot.name] + ".png")
		else:
			slot.texture = null

	for slot in $slot_tex.get_children():
		if slot.name == str(MainInventoryScript.num_chose):
			slot.texture = load("res://widget/inventory item/active slot.jpg")
		else:
			slot.texture = load("res://widget/inventory item/slot.jpg")

	if MainInventoryScript.all[str(MainInventoryScript.num_chose)]:
		if Input.is_action_just_pressed("drop"):
			var a = MainInventoryScript.all[str(MainInventoryScript.num_chose)]
			drop_obj = load("res://mesh/" + a + "/" + a + ".tscn").instantiate()
			get_parent().get_parent().get_parent().add_child(drop_obj)
			drop_obj.global_transform = $"../../drop".global_transform
			drop_obj.apply_central_impulse(drop_obj.transform.basis.z * -3)
			MainInventoryScript.all[str(MainInventoryScript.num_chose)] = null
		else:
			var a = MainInventoryScript.all[str(MainInventoryScript.num_chose)]
			if obj: obj.queue_free()
			obj = load("res://mesh/" + a + "/" + a + ".tscn").instantiate()
			obj.gravity_scale = 0
			$"../..".add_child(obj)
			obj.global_transform = $"../../obj pos".global_transform
	else:
		if obj: obj.queue_free()
		obj = null

func arm_widget(num):
	var a
	if MainInventoryScript.all[str(num)]:
		a = load("res://widget/arm/" + MainInventoryScript.all[str(num)] + ".png")
	else:
		a = load("res://widget/arm/null.png")
	return a
