extends Control

var wordList = ["rebel", "rule", "right", "cherry"]
var speechSynthesizer = SpeechSynthesizer.new()

func _ready():
	display_random_word()

func display_random_word():
	var randomIndex = randi() % wordList.size()
	var randomWord = wordList[randomIndex]
	$RichTextLabel2.text = randomWord

func _on_Button1_pressed():
	var wordToSpeak = $RichTextLabel2.text
	speechSynthesizer.speak(wordToSpeak)


func _on_RichTextLabel2_text_changed():
	display_random_word()
	if generatedWord.to_lower() == recognizedWord.to_lower():
		# Match: Correct!
		pass
	else:
		# Incorrect, please try again
		pass


func _on_button_pressed():
	var generatedWord = $RichTextLabel2.text
	var recognizedWord = $RichTextLabel3.text.strip_edges()


func _on_button_2_pressed():
	pass
