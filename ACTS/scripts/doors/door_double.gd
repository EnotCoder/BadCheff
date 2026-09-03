extends "res://ACTS/scripts/doors/door.gd"


func toggle_door() -> void:
	if locked != "":
		if locked == MainInventoryScript.chose_obj:
			unlock_door()
		else:
			show_locked_hint("Закрыто")
		return
		
	_perform_toggle()
