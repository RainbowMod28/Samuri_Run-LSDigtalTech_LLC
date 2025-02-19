extends Button
@export var display_time : float = 1
@export var text_to_show : String = "text"

@onready var popup_scene = load("res://popup.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if button_pressed:
		var new_popup = popup_scene.instantiate() #This calls the popup scene
		new_popup.showtime = display_time #This is suppose to time how long the popup stays up
		new_popup.text_to_show = text_to_show
		add_child(new_popup)
