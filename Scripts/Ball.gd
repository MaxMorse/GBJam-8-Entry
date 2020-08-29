extends Sprite


# Declare member variables here. Examples:
var _spawner
var _speed = 32
var _direction = Vector2(-1, 0)


 
# Called when the node enters the scene tree for the first time.
func _ready():
	_spawner = get_parent().get_parent()
	_speed = _spawner.speed 
	_direction = _spawner.direction
	 #get_node("notifier").connect("screen_exited", self, "_on_screen_exited")

func _physics_process(delta):
	position += _speed * _direction * delta 

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
