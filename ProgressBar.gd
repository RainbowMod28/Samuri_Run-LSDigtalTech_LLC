extends ProgressBar

func _ready():
	update()

func update():
	value = Game.shogunHP 
	pass
