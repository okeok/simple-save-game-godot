extends Control

#btns
func _on_back_pressed():
	get_parent().game_menu_hide()
	get_tree().paused = false

func _on_quit_pressed():
	Global.save_game()
	get_tree().change_scene("res://scense/menu.tscn")
	get_tree().paused = false
