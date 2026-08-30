extends "res://ACTS/scripts/doors/door.gd"

@export var required_uses: int = 1
var _uses_count: int = 0

func toggle_door() -> void:
	if animation_in_progress:
		return
	_uses_count += 1
	if _uses_count < required_uses:
		Dialog.show_hint("Можно выбить")
		$"ПопыткаОткрытьДверь".play()
		return
	door_opened = not door_opened
	if door_opened:
		play_animation("open")
		if _uses_count == required_uses:
			$"ВыбиванияДвери".play()
			State.set_noise()
	else:
		play_animation("close")
	animation_in_progress = true
	player_interaction_active = door_opened
