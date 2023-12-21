extends AnimatableBody2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 1
var miny: int = 20
var maxy: int = 875
var poschange: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos.x -= speed
	position = pos
