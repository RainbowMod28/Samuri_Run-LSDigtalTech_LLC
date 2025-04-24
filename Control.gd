extends Control
#Timer code

func _ready():
	Reset_Timer()
	

var seconds = 0
var minutes= 0
var Defualt_seconds= 30
var Defualt_minutes= 1


func Reset_Timer():
	seconds = Defualt_seconds
	minutes = Defualt_minutes


func _on_timer_timeout():
	if seconds == 0:
		if minutes> 0:
			minutes-=1
			seconds= 59
		else:
			$Timer.stop()
			check_timer_completion()
	else:
		seconds -= 1
	update_timer_text()
	
	$Timer2.text=str(minutes)+":"+str(seconds)
	
func check_timer_completion():
	var label_node = ($"../Cards")
	
	if label_node and label_node.collected_cards >= 7:
		next_level()
	else:
		print("Not enough cards!")
		get_tree().change_scene_to_file("res://GameOver.tscn")
	
func next_level():
	get_tree().change_scene_to_file("res://World_2.0.tscn")

func update_timer_text():
	$Timer2.text = str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)

func _on_timer_ready():
	Reset_Timer()
	
