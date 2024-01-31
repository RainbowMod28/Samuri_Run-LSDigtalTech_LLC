extends Control

@onready var UI = $"."

func _on_resume_pressed():
	UI.pauseMenu


func _on_quit_pressed():
	get_tree().quit()
