extends Area3D

@export var Key_object: String

const VOID_POS := Vector3(0, -1000, 0)

func main():
	if MainInventoryScript.add(Key_object):
		var item = get_parent().get_parent()
		MainInventoryScript.set_item_node(Key_object, item)
		item.global_position = VOID_POS
		item.freeze = true
		item.collision_layer = 0
		item.collision_mask = 0
