extends Node2D
onready var Ball = preload("res://Prefabs/Ball.tscn")

# Declare member variables here. Examples:
export(float) var interval = 1

export(float) var speed = 64 

export(Vector2) var direction = Vector2(-1, 0)
var timer = 0 
onready var balls = $Balls

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += delta
	if timer >= interval:
		if(balls.get_child_count() < 3):
			var b = Ball.instance()
			#balls.append(b)
			balls.add_child(b)
		timer = 0
