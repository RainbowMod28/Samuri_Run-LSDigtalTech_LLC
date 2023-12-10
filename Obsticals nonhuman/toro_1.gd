extends CharacterBody2D
#Just collostion 


func _on_player_detection_body_entered(body):
	if body.name == "Player":
		print("Player")




