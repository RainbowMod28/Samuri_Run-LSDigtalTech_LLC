extends Area2D

var entered = false
var Gold = 10

func check_gold_count():
	# Check if the player's gold count equals 190
	var player = $Player  # Adjust this to your actual player reference
	if player != null and Gold >= 100:
		return true
	else:
		return false

func _on_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://world_2.tscn")


func _physics_process(_delta):
	pass



