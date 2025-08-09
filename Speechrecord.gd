#extends Control
#
#var record_bus_index: int
#var record_effect: AudioEffectRecord
#
#func _ready() -> void:
	#record_bus_index = AudioServer.get_bus_index('Record')
	##record_effect = AudioServer.get_bus_effect(record_bus_index, 0)
#
#func start_recording() -> void:
	#record_effect.set_recording_active(true)
	#$record.text = "Stop Recording"
#
#func stop_recording() -> void:
	#record_effect.set_recording_active(false)
	#$record.text = "Start Recording"
#
#func _on_record_pressed() -> void:
	#pass # Replace with function body.
#
#
#func _on_playback_pressed() -> void:
	#pass # Replace with function body.
