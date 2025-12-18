extends CanvasLayer

var best_time := 0.0

func show_loss(time_survived):
	visible = true
	$LostLabel.text = "YOU LOST"
	$TimeLabel.text = "Time: " + str(round(time_survived))
	
	if time_survived > best_time:
		best_time = time_survived
	
	$BestLabel.text = "Best: " + str(round(best_time))
	$UI/TimeLabel.text = "Time: " + str(round(time_survived))
