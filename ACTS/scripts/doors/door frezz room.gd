extends "res://ACTS/scripts/doors/door.gd"

@export var required_uses: int = 4
var uses_count: int = 0

func toggle_door():
	if not animation_in_progress:
		uses_count += 1

		if uses_count >= required_uses:
			if not door_opened:
				play_animation("open")
				if uses_count == 4:
					$"ВыбиванияДвери".play()
					State.set_noise()

				door_opened = true
				animation_in_progress = true
				player_interaction_active = door_opened
			else:
				play_animation("close")

				door_opened = false
				animation_in_progress = true
				player_interaction_active = door_opened
		else:
			Diolog.set_hint("Можно выбить")
			$"ПопыткаОткрытьДверь".play()
