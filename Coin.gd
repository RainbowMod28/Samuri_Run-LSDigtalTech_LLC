extends Area2D
#Just the coin collection program, adds 10 each time it's collected
var Gold = 0
@onready var coinSound = $CoinSound

func _on_body_entered(body):
	if body.name == "Player":
		coinSound.play()
		#await get_tree().create_timer(coinSound.stream.get_length()).timeout
		Game.Gold += 10
		queue_free()
		emit_signal("coin_collected")
		

func _ready():
	get_node("AnimatedSprite2D").play("default")
