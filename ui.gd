extends CanvasLayer

var best_time := 0.0

# Called from Castle when the game ends
func show_loss(time_survived):
	visible = true
	
	$LostLabel.text = "YOU LOST"
	$TimeLabel.text = "Time: " + str(round(time_survived))
	
	if time_survived > best_time:
		best_time = time_survived
	
	
	$RetryLabel.text = "Press R to Retry"

# Handles retry input even when game is paused
func _process(_delta):
	if Input.is_action_just_pressed("restart"):
		get_tree().paused = false
		get_tree().reload_current_scene()
