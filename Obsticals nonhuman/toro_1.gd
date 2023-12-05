extends CharacterBody2D

var cardTextures = [
	preload("res://r- beginning resized/hear copy.png"),
	preload("res://r- beginning resized/ram.png"),
	preload("res://r- beginning resized/ramen.png"),
	preload("res://r- beginning resized/read.png"),
	preload("res://r- beginning resized/rectangle.png"),
	preload("res://r- beginning resized/red.png"),
	preload("res://r- beginning resized/riding.png"),
	preload("res://r- beginning resized/rug.png"),
	preload("res://r- beginning resized/ruler.png"),
	preload("res://r- beginning resized/running.png"),
	preload("res://r- beginning resized/writing.png"),
]

func _on_player_detection_body_entered(body):
	if body.name == "Player":
		print("Player")




