extends CharacterBody2D

var SPEED = 50
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player 
var chase = false
var playerHP

@onready var anim = get_node("AnimatedSprite2D")


func _ready():
	anim.play("Idle")
	
		
func _physics_process(delta):
	velocity.y += gravity * delta
	if chase == true:
		if get_node("AnimatedSprite2D").animation !="Death":
			anim.play("Run")
		player = get_node("../Player")
		var direction = (player.position - self.position).normalized()
		if direction.x > 0:
			get_node("AnimatedSprite2D").flip_h= false
		else:
			get_node("AnimatedSprite2D").flip_h= true
		velocity.x = direction.x * SPEED
		
	else:
		if get_node("AnimatedSprite2D").animation != "Death":
			anim.play("Idie")
		
			
		
	
	move_and_slide()

func _on_player_detection_body_entered(body):
	if body.name == "Player":
		player = get_node("../Player")
		print(player.global_position)
		chase = true

func _on_player_detection_body_exited(body):
	chase = false

func _on_player_death_body_entered(body):
	if body.name =="Player":
		death()
		




func _on_player_collision_body_entered(body):
	if body.name =="Player":
		if get_node("AnimatedSprite2D").animation !="Attack":
			anim.play("Attack")
			Game.playerHP -= 10
		
		
	
func death():
	Game.Gold += 5
	Utils.saveGame()
	chase = false
	anim.play("Death")
	await get_node("AnimatedSprite2D").animation_finished
	self.queue_free()
