extends Area3D

@export var FUNC_NAME: String
@export var NODE_ACTION: Node
@export var delta: bool

func main():
	if !delta:
		NODE_ACTION.call(FUNC_NAME)


func main_delta():
	if delta:
		NODE_ACTION.call(FUNC_NAME)
