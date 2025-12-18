extends CharacterBody2D

@export var speed := 80

func _physics_process(delta):
	velocity = Vector2(0, speed)
	move_and_slide()
