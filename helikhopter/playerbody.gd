extends CharacterBody2D

const mass = 1.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	rotation_degrees = 10

func _physics_process(delta):
	

	# Handle jump.
	if Input.is_action_pressed("playerup"):
		velocity.y -= gravity * delta * mass
		if rotation_degrees > 1:
			rotation_degrees -= abs(10-rotation_degrees)
	else:
		# Add the gravity.
		velocity.y += gravity * delta * mass
		if rotation_degrees < 20:
			rotation_degrees += abs(10-rotation_degrees)
	
	move_and_slide()
