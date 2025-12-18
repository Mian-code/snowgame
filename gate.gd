extends Area2D

@export var max_health := 5
var health := max_health

@export var health_bar: ColorRect

func _ready():
	health = max_health
	update_health_bar()

func _on_body_entered(body):
	if body.is_in_group("enemies"):
		health -= 1
		body.queue_free()
		update_health_bar()

		if health <= 0:
			game_over()

func update_health_bar():
	var ratio = health / max_health
	health_bar.size.x = 200 * ratio  # width proportional to health

func game_over():
	health_bar.visible = false
	get_tree().paused = true
	get_node("/root/Main/UI").show_loss(
		get_node("/root/Main").time_survived
	)
