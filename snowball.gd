extends Area2D

@export var speed := 400

func _process(delta):
	position.y -= speed * delta

func _on_body_entered(body):
	print("HIT:", body.name)

	if body.is_in_group("enemies"):
		body.queue_free()
		queue_free()
