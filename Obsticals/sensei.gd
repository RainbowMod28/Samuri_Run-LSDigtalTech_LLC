extends CharacterBody2D
#The sensei in the beginning code

func _on_player_detection_body_entered(body):
	if body.name =="Player":
		print("Player")
