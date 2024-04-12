extends Control

@onready var UI = $"."

func _on_resume_pressed():
	hide()
	get_tree().paused = false


func _on_quit_pressed():
	get_tree().quit()
