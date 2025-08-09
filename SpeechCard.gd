#extends TextureRect
#
#var count = 0
#var text_to_show = "Hear"
#var showtime = 10
#var i = (randi() % 10)
#var j = i
#
## Called when the node enters the scene tree for the first time.
#func _ready():
	#$".".texture =(card_ditc["Cards"][i])
	#$"../Label".text = (card_ditc["CardLabel"][j])
	#
	##audioPlayer.stream = (card_ditc["Sounds"][j])
	##audioPlayer.play() #play the sound
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
#var carSounds = [
	#load("res://Audio/r-beginning audio/ram.mp3"),
	#load("res://Audio/r-beginning audio/ramen.mp3"),
	#load("res://Audio/r-beginning audio/read.mp3"),
	#load("res://Audio/r-beginning audio/rectangle.mp3"),
	#load("res://Audio/r-beginning audio/red.mp3"),
	#load("res://Audio/r-beginning audio/racing.mp3"),
	#load("res://Audio/r-beginning audio/rug.mp3"),
	#load("res://Audio/r-beginning audio/ruler.mp3"),
	#load("res://Audio/r-beginning audio/running.mp3"),
	#load("res://Audio/r-beginning audio/writing.mp3")
#]
#
#var cardImages = [
	#load("res://r- beginning resized/ram.png"),
	#load("res://r- beginning resized/ramen.png"),
	#load("res://r- beginning resized/read.png"),
	#load("res://Image20250103123006.png"),
	#load("res://r- beginning resized/red.png"),
	#load("res://r- beginning resized/riding.png"),
	#load("res://r- beginning resized/rug.png"),
	#load("res://r- beginning resized/ruler.png"),
	#load("res://r- beginning resized/running.png"),
	#load("res://r- beginning resized/writing.png")
#]
#
#var words = ["ram","ramen", "read", "rectange","red",
#"riding","rug","ruler", "running", "writing"]
#
#var card_ditc = {
	#"CardLabel" : words,
	#"Cards" : cardImages,
	#"Sounds" : carSounds
#}
