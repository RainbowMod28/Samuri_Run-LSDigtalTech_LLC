extends Label
#The gold counting label
func _ready():
	pass


func _process(delta):
	text = "Gold: " + str(Game.Gold)

