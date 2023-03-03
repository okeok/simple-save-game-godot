extends Control

#set res
func set_wood_info(wood):
	$top/res/wood.text = 'Wood ' + wood as String

func set_stone_info(stone):
	$top/res/stone.text = 'Stone ' + stone as String

func set_gold_info(gold):
	$top/res/gold.text = 'Gold ' + gold as String

#hide game mune
func game_menu_hide():
	$game_menu.hide()

#btn
func _on_open_menu_btn_pressed():
		$game_menu.show()
		get_tree().paused = true
