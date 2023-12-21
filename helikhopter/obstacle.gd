extends AnimatableBody2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos.x -= speed
	position = pos

func _on_area_2d_body_entered(body):
	var randompos = randi_range(100,800)
	body.position.x += 1300
	body.position.y += randompos


