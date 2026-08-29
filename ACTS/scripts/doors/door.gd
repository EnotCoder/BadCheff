extends Node3D

@export var locked: String = ""
@export var locked_hint: String = ""
@export var say: String = ""
@export var noise: bool = false

var door_opened: bool = false
var animation_in_progress: bool = false
var player_interaction_active: bool = false

func toggle_door() -> void:
	if locked != "":
		if locked == MainInventoryScript.chose_obj:
			unlock_door()
		else:
			show_locked_hint(locked_hint)
		return
	_perform_toggle()
	if noise and door_opened:
		State.set_noise()

func enemy_door() -> void:
	_perform_toggle()

func _perform_toggle() -> void:
	if animation_in_progress:
		return
	door_opened = not door_opened
	if door_opened:
		play_animation("open")
	else:
		play_animation("close")
	animation_in_progress = true
	player_interaction_active = door_opened

func unlock_door() -> void:
	locked = ""

func show_locked_hint(text: String) -> void:
	Diolog.set_hint(text)

func play_animation(animation_name: String) -> void:
	$AnimationPlayer.play(animation_name)

func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	animation_in_progress = false
