@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("SpeechToText", "Node", preload("res://addons/speechtotext/icon.png"), AudioBusLayout)

func _exit_tree():
	remove_custom_type("SpeechToText")
