extends Node3D


func break_b():
	if MainInventoryScript.chose_obj:
		$board.queue_free()
		$board_break.show()
		$ACTION.queue_free()
