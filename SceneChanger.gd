extends CanvasLayer

signal scence_changed()

@onready var animation_player = $AnimationPlayer
@onready var black = $Control/Black

func change_scene(path, delay =0.5):
	await (get_tree().create_timer(delay)).timeout
	animation_player.play("Fade Out")
	await get_node("AnimationPlayer").animation_finished
	get_tree().change_scene_to_file("res://world_2.tscn")
	
