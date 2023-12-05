extends Area2D

var Gold = 0

func _on_body_entered(body):
	if body.name == "Player":
		Game.Gold += 10
		queue_free()
		emit_signal("coin_collected")
		

func _ready():
	get_node("AnimatedSprite2D").play("default")


