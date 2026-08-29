extends Node3D




func _on_player_zone_body_entered(body: Node3D) -> void :
	if body is player: MainInventoryScript.position_point = "frezz_room"
	if body is enemy: State.position_point = "frezz_room"


func _on_kithcen_body_entered(body: Node3D) -> void :
	if body is player: MainInventoryScript.position_point = "kitchen"
	if body is enemy: State.position_point = "kitchen"


func _on_room_body_entered(body: Node3D) -> void :
	if body is player: MainInventoryScript.position_point = "room"
	if body is enemy: State.position_point = "room"
