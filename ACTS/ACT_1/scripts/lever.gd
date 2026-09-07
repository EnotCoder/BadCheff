extends "res://ACTS/ACT_1/scripts/doors/door.gd"

signal lever_activated

func toggle_door():
	if not animation_in_progress:
		if not door_opened:
			$AnimationPlayer.play("open")
			door_opened = true
			lever_activated.emit()
