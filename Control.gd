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
	if seconds== 0:
		if minutes> 0:
			minutes-=1
			seconds=60
		else:
			$Timer.stop()
	seconds -= 1
	update_timer_text()
	
	$Timer2.text=str(minutes)+":"+str(seconds)
	
	
func update_timer_text():
	$Timer2.text = str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)

func _on_timer_ready():
	Reset_Timer()
	
