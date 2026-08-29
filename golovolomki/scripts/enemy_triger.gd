extends Area3D

@export var func_ent = ""
@export var node: Node

func _on_body_entered(_body: Node3D) -> void :
	node.call(func_ent)
