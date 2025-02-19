extends Node2D

@onready var speech_to_text = $SpeechToText

func _ready():
	speech_to_text.init()
	while not speech_to_text.can_speak():
		await get_tree().idle
	print("godot-speech-to-text plugin loaded")

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if speech_to_text.can_speak():
			print("Speech recognition started")
			speech_to_text.start()
	if Input.is_action_just_released("ui_accept"):
		if speech_to_text.am_speaking():
			print("Speech recognition stopped")
			var result = speech_to_text.stop_and_get_result()
			#if result is GDScriptFunctionState:
				#result = await result.completed
			print("Recognized: " + result)
