extends Node3D


var rot_y = 0
var elapsed = 0.0

func _process(delta: float) -> void:
	elapsed += delta
	var offset = sin(elapsed * 1) * 1
	$mesh / Cube_006.rotation.y = offset


func _on_hit_body_entered(body: Node3D) -> void :
	if body is CharacterBody3D and MainInventoryScript.position_point == "room":
		State.state = State.StateBook.ATTACK
		Dialog.show_say("ага")
