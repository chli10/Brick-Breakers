extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer
@onready var game_won_container = $GameWonContainer

func set_lifes (lifes: int):
	lifes_label.text = "Lifes: %d"  % lifes
	

func game_over():
	$GameLost.play()
	game_lost_container.show()
	
	
func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	$LevelPassed.play()
	level_won_container.show()
	

func _on_level_won_button_pressed():
	LevelDefinitions.current_level += 1
	get_tree().reload_current_scene()
	if LevelDefinitions.current_level == 3:
		game_won_container.show()
