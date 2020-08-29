extends Node2D
var ballPath = "res://Prefabs/Ball.tscn"

onready var hitZone = $HitZone

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_just_pressed("A"):
		var hits = hitZone.get_overlapping_bodies()
		for body in hits:
			body.get_parent()._direction = Vector2(1,0)
