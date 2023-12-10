extends Area2D
#This is the code for the card function, of collecting it


@export var display_time : float = 1
@export var text_to_show : String = "text"

@onready var popup_scene = load("res://popup.tscn")

func _on_body_entered(body): #When this function is when the player collects the card
	if body.name == "Player":
		var new_popup = popup_scene.instantiate() #This calls the popup scene
		new_popup.showtime = display_time #This is suppose to time how long the popup stays up
		new_popup.text_to_show = text_to_show
		add_child(new_popup)
		
		

func _ready(): #Making sure the card is animated
	get_node("AnimatedSprite2D").play("default")






func _on_body_exited(body): #This is the stuff that should happen once a character leaves a card
	queue_free() #deletes the card
	Game.cardCollection += 1 #Calls on the card collection process
	emit_signal("card_collected")
