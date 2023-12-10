extends Area2D

#This is the old code for the world transition, this code is no longer in use

var entered = false
var Gold = 10

func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	entered = true


func _on_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	entered = false


func _physics_process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept") and check_gold_count():
			get_tree().change_scene_to_file("res://world_2.tscn")

func check_gold_count():
	# Check if the player's gold count equals 190
	var player = $Player  # Adjust this to your actual player reference
	if player != null and Gold == 190:
		return true
	else:
		return false

