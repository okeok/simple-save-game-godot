extends Control

#btns
func _on_continue_pressed():
	Global.load_game()
	get_tree().change_scene("res://scense/game.tscn")

func _on_new_game_pressed():
	Global.reset_game_variables()
	get_tree().change_scene("res://scense/game.tscn")

func _on_exit_pressed():
	get_tree().quit()


func _ready():
	if not Global.is_file_for_load_exist():
		$content/continue.hide()
