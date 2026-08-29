extends Area3D

@export var Key_object: String

func main():
	if MainInventoryScript.add(Key_object):
		get_parent().get_parent().queue_free()
