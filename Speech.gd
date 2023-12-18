extends Control

var cardImages = [
	load("res://r- beginning resized/hear copy.png"),
	load("res://r- beginning resized/ram.png"),
	load("res://r- beginning resized/ramen.png"),
	load("res://r- beginning resized/read.png"),
	load("res://r- beginning resized/rectangle.png"),
	load("res://r- beginning resized/red.png"),
	load("res://r- beginning resized/riding.png"),
	load("res://r- beginning resized/rug.png"),
	load("res://r- beginning resized/ruler.png"),
	load("res://r- beginning resized/running.png"),
	load("res://r- beginning resized/writing.png")
]

var words = ["hear", "ram","ramen", "read", "rectange","red",
"riding","rug","ruler", "running", "writing"]

var card_ditc = {
	"CardLabel" : words,
	"Cards" : cardImages
}

func _ready(): 
	$TextureRect.texture =(card_ditc["Cards"][0]) #Changes the card's image
	$Label.text = (card_ditc["CardLabel"][0]) #changes the card'd label/name
	


func _on_mic_dect_ready():
	pass # Replace with function body.


func _on_button_pressed():
	pass # Replace with function body.
