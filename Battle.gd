extends Control

signal textbox_closed

@onready var shogun = $ShogunContainer/Shogun
@onready var player = $Player2

# Called when the node enters the scene tree for the first time.

func enemy_turn():
	display_text("NOW IT'S MY TURN")
	await textbox_closed
	shogun.attack()
	player.take_damage()

func _ready():
	set_health($ShogunContainer/ProgressBar, Game.shogunHP, Game.max_health)
	$Textbox.hide()
	$Actions.hide()
	
	display_text("YOU THINK YOU CAN DEFEAT ME 
	WITH YOUR POWER OF SPEECH??")
	await textbox_closed
	$Actions.show()
func update():
	pass
 

func set_health(progress_bar, health, max_health):
	progress_bar.value = health
	progress_bar.max_value = max_health
	#progress_bar.get_node("ShogunHP").text = "HP: %d/%d" % [health, max_health]
	

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
	player.take_damage()
	await textbox_closed
	pass # Replace with function body.


func _on_attack_1_pressed():
	display_text("Ngh- That was nothing....")
	#Game.current_ShogunHP -= 50
	shogun.take_damage(50)
	set_health($ShogunContainer/ProgressBar, Game.current_ShogunHP, Game.max_health)
	await textbox_closed
	enemy_turn()
	
	


func _on_attack_2_pressed():
	display_text("Ow, that hurts...")
	#Game.current_ShogunHP -= 100
	shogun.take_damage(100)
	set_health($ShogunContainer/ProgressBar, Game.current_ShogunHP, Game.max_health)
	await textbox_closed
	enemy_turn()


func _on_super_pressed():
	display_text("Your power of speech is too much!")
	#Game.current_ShogunHP -= 1000
	shogun.take_damage(1000)
	set_health($ShogunContainer/ProgressBar, Game.current_ShogunHP, Game.max_health)
	await textbox_closed
	enemy_turn()
