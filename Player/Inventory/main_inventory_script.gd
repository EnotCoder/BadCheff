extends Node

const SLOT_COUNT := 3

var slots: Array[String] = ["", "", ""]
var num_chose: int = 1

# Player's current location (distinct from State.position_point, which tracks the chef).
var position_point: String = "frezz_room"

signal inventory_changed

# Currently selected item, derived from `slots`/`num_chose` (was a desynced cached field).
var chose_obj: String:
	get:
		return slots[num_chose - 1]

var _item_nodes: Dictionary = {}

func set_item_node(key: String, node: RigidBody3D) -> void:
	_item_nodes[key] = node

func get_item_node(key: String) -> RigidBody3D:
	return _item_nodes.get(key)

func remove_item_node(key: String) -> void:
	_item_nodes.erase(key)


func reset() -> void:
	slots = ["", "", ""]
	num_chose = 1
	inventory_changed.emit()


func add(key: String) -> bool:
	for i in SLOT_COUNT:
		if slots[i].is_empty():
			slots[i] = key
			inventory_changed.emit()
			return true
	return false


func has(key: String) -> bool:
	return key in slots


func is_full() -> bool:
	for s in slots:
		if s.is_empty():
			return false
	return true


func remove_at(index: int) -> String:
	index = clampi(index, 0, SLOT_COUNT - 1)
	var key := slots[index]
	slots[index] = ""
	inventory_changed.emit()
	return key


func set_chosen(i: int) -> void:
	num_chose = clampi(i, 1, SLOT_COUNT)
	inventory_changed.emit()


func cycle(dir: int) -> void:
	num_chose += dir
	if num_chose > SLOT_COUNT:
		num_chose = 1
	elif num_chose < 1:
		num_chose = SLOT_COUNT
	inventory_changed.emit()
