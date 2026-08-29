extends Area3D

@export var FUNC_NAME: String
@export var NODE_ACTION: Node

func _on_body_entered(body: Node3D) -> void :
	NODE_ACTION.call(FUNC_NAME)
