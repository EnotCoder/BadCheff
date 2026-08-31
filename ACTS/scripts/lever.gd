extends "res://ACTS/scripts/doors/door.gd"

func toggle_door():
	if not animation_in_progress:
		if not door_opened:
			$AnimationPlayer.play("open")
			door_opened = true
