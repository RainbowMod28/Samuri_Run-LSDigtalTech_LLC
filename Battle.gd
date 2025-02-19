extends Control

signal textbox_closed

# Called when the node enters the scene tree for the first time.
func _ready():
	$Textbox.hide()
	$Actions.hide()
	
	display_text("YOU THINK YOU CAN DEFEAT ME 
	WITH YOUR POWER OF SPEECH??")
	await textbox_closed
	$Actions.show()
func update():
	pass


func _input(event):
	if (Input.is_action_just_pressed("ui_accept") or Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)) and $Textbox.visible:
		$Textbox.hide()
		emit_signal("textbox_closed")

func display_text(text):
	$Textbox.show()
	$Textbox/Label.text = text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_run_pressed():
	display_text("Come back when you're prepared to face me!")
	await textbox_closed
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://World.tscn")
	


func _on_dodge_pressed():
	display_text("UGH YOU DODGED")
	await textbox_closed
	pass # Replace with function body.


func _on_block_pressed():
	display_text("AAAAUUUUGGGGHHH")
	Game.playerHP -=1
	await textbox_closed
	pass # Replace with function body.


func _on_attack_1_pressed():
	display_text("Ngh- That was nothing....")
	Game.shogunHP -= 50
	await textbox_closed
	pass # Replace with function body.


func _on_attack_2_pressed():
	display_text("Ow, that hurts...")
	Game.shogunHP -= 100
	await textbox_closed
	pass # Replace with function body.


func _on_super_pressed():
	display_text("Your power of speech is too much!")
	Game.shogunHP -= 1000
	await textbox_closed
	pass # Replace with function body.
