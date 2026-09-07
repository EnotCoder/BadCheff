extends RigidBody3D


func move():
	if Input.is_action_pressed("left_click"):
		position = position.move_toward($"../../player".position, 0.01)
	elif Input.is_action_pressed("right click"):
		position = position.move_toward($"../../player".position, -0.01)
