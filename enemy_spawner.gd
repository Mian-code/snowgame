extends Node2D

@export var enemy_scene: PackedScene
@export var spawn_delay := 1.5

func _ready():
	while true:
		await get_tree().create_timer(spawn_delay).timeout
		spawn_enemy()

func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(randf_range(50, 750), -30)
	get_parent().add_child(enemy)
