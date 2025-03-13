extends Label
#Total amount of cards per level
var total_cards = 10
#counter for collected
var collected_cards = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#collection of the cards
	#total_cards = get_tree().get_nodes_in_group("Card").size()
	update_text()
	#Connect all card signals
	for card in get_tree().get_nodes_in_group("Card"):
		if not card.is_connected("card_collected", Callable(self, "collect_card")):
			card.connect("card_collected", Callable(self, "collect_card"))

# Update the label text
func update_text():
	text = "Cards: " + str(collected_cards) + "/" + str(total_cards)
	
func collect_card():
	collected_cards += 1
	update_text()


func _on_card_card_collected():
	collected_cards += 1
	update_text()
