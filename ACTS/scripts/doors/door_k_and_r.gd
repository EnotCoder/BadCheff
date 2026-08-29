extends "res://ACTS/scripts/doors/door.gd"

var is_locked = true

func toggle_door():
	if locked != "":
		if locked == MainInventoryScript.chose_obj:
			unlock_door()
		else:
			show_locked_hint("Закрыто")
	elif is_locked:

		show_locked_hint("Что-то мешает")
	elif not $"../../little object/lever".door_opened:
		show_locked_hint("Не хватает энергии")
	else:
		if not animation_in_progress:
			if not door_opened:
				play_animation("open")
			elif door_opened:
				play_animation("close")
			door_opened = not door_opened
			animation_in_progress = true
			player_interaction_active = door_opened

func loked_is_false():
	if MainInventoryScript.chose_obj == "hamer":
		is_locked = false
	else: Diolog.set_hint("Нужно его сломать")
