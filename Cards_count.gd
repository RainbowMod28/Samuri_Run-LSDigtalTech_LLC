extends Label
#This is the code that helps count the code up top

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = "Cards: " + str(Game.cardCollection) 
