extends Node2D

var not_anim_and = false

func color_down():
	$AnimationPlayer.play("start")
	not_anim_and = false

func color_up():
	$AnimationPlayer.play("and")
	not_anim_and = false

func _on_animation_player_animation_finished(_anim_name: StringName) -> void :
	not_anim_and = false
