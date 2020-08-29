extends Sprite


# Declare member variables here. Examples:
var speed = 32
var direction = Vector2(-1, 0)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += speed * direction * delta
#	pass
