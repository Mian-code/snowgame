extends Node2D

var time_survived := 0.0

func _process(delta):
	if not get_tree().paused:
		time_survived += delta
