extends CharacterBody2D

@export var speed := 200
@export var snowball_scene: PackedScene

func _physics_process(delta):
	var dir := 0
	if Input.is_action_pressed("ui_left"):
		dir -= 1
	if Input.is_action_pressed("ui_right"):
		dir += 1

	velocity.x = dir * speed
	velocity.y = 0
	move_and_slide()

	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	var snowball = snowball_scene.instantiate()
	snowball.global_position = $ShootPoint.global_position
	get_parent().add_child(snowball)

 
