extends Node3D

const SPEED_MAX = 1.0

static var speed = 0.0

func _physics_process(delta):
	var velocity = Vector3.ZERO # The player's movement vector.
	
	# Keyboard input
	if Input.is_action_pressed("move_forward"):
		velocity.z -= 1.0
	
	if Input.is_action_pressed("move_backward"):
		velocity.z += 1.0
	
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1.0
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1.0
		
	# Mouse input
	
	if velocity.length() > 0:
		velocity = velocity.normalized()
		position += velocity * delta
