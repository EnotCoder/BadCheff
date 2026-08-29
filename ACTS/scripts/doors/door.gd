extends Node3D


@export var locked: String = ""
@export var locked_hint: String = ""
@export var say: String = ""
@export var noise: bool = false


var door_opened: bool = false
var animation_in_progress: bool = false
var player_interaction_active: bool = false


func toggle_door():
	if locked != "":
		if locked == MainInventoryScript.chose_obj:
			unlock_door()
		else:
			show_locked_hint("Закрыто")
	else:
		if not animation_in_progress:
			if not door_opened:
				play_animation("open")
				if noise:
					State.set_noise()
			elif door_opened:
				play_animation("close")
			door_opened = not door_opened
			animation_in_progress = true
			player_interaction_active = door_opened

func enemy_door():
	if not animation_in_progress:
		if not door_opened:
			play_animation("open")
		elif door_opened:
			play_animation("close")

		door_opened = not door_opened
		animation_in_progress = true
		player_interaction_active = door_opened


func unlock_door():
	locked = ""


func show_locked_hint(text):
	Diolog.set_hint(text)


func play_animation(animation_name: String):
	$AnimationPlayer.play(animation_name)

func _on_animation_player_animation_finished(_anim_name: StringName) -> void :
	animation_in_progress = false
