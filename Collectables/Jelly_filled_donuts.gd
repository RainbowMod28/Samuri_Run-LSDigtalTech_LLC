extends Area2D
#Collectables health system

var maxHealth = 100
var addHealth = 15



func _on_body_entered(body):
	if body.name == "Player":
		if Game.playerHP < maxHealth: #Making sure that the health is never over 100
			var healthDiff = maxHealth - Game.playerHP
			if addHealth > healthDiff:
				Game.playerHP += healthDiff
				queue_free()
			else:
				Game.playerHP += healthDiff
				queue_free()
		else:
			pass
		
