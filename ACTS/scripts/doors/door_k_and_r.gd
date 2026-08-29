extends "res://ACTS/scripts/doors/door.gd"

var is_locked: bool = true

func toggle_door() -> void:
	if locked != "":
		if locked == MainInventoryScript.chose_obj:
			unlock_door()
		else:
			show_locked_hint("Закрыто")
		return
	if is_locked:
		show_locked_hint("Что-то мешает")
		return
	if not $"../../little object/lever".door_opened:
		show_locked_hint("Не хватает энергии")
		return
	_perform_toggle()

func locked_is_false() -> void:
	if MainInventoryScript.chose_obj == "hamer":
		is_locked = false
	else:
		Diolog.set_hint("Нужно его сломать")
