extends Control 

@onready var cardImage = $Window/TextureRect
@onready var popup = $Window


var count = 0
var text_to_show = "Hear"
var showtime = 10
 
# Called when the node enters the scene tree for the first time.
func _ready():
	popup.show()
	$Window/Camera2D/TextureRect.texture =(card_ditc["Cards"][7])
	count = count + 1
	$Window/Camera2D/Label.text = (card_ditc["CardLabel"][7])
	$Timer.start(showtime)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


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

func _on_window_close_requested():
	popup.hide()



