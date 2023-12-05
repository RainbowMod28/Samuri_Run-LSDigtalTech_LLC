extends Area2D

@export var display_time : float = 1
@export var text_to_show : String = "text"

@onready var popup_scene = load("res://popup.tscn")

func _on_body_entered(body):
	if body.name == "Player":
		var new_popup = popup_scene.instantiate()
		new_popup.showtime = display_time
		new_popup.text_to_show = text_to_show
		add_child(new_popup)
		
		

func _ready():
	get_node("AnimatedSprite2D").play("default")






func _on_body_exited(body):
	queue_free()
	Game.cardCollection += 1
	emit_signal("card_collected")
