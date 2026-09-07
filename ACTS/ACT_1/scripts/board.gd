extends Node3D

@onready var action: Area3D = $action
@onready var def_mesh: Node3D = $def_mesh
@onready var break_mesh: Node3D = $break_mesh

var is_break:bool = true

func _ready() -> void:
	break_mesh.position = Vector3.ZERO
	break_mesh.hide()

func break_board() -> void:
	var is_hamer = (MainInventoryScript.chose_obj == "hamer")
	if is_hamer:
		replace_model_board()
		delete_action()
		is_break = false
	else:
		Dialog.show_hint("Мне нужен молоток")

func replace_model_board() -> void:
	def_mesh.hide()
	break_mesh.show()
	
func delete_action() -> void:
	if action != null:
		action.queue_free()
	
