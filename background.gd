extends ParallaxBackground
#This code is for the Parllax Background, making sure how it moves

var scrolling_speed=100

func _process(delta):
	scroll_offset.x -= scrolling_speed * delta
	
