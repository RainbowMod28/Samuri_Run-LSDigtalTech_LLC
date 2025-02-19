extends Control
var Coin = preload("res://Collectables/coin.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

"""
func _on_timer_timeout():
	var coinTemp = Coin.instantiate()
	var rng = RandomNumberGenerator.new()
	var ranint = rng.randi_range(10,400)
	coinTemp.position = Vector2(1150,ranint)
	add_child(coinTemp)
"""
