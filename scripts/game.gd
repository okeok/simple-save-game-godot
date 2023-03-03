extends Node2D

#set res
func set_res_info(wood, stone, gold):
	$ui.set_wood_info(wood)
	$ui.set_stone_info(stone)
	$ui.set_gold_info(gold)
	
#btns
func _on_get_wood_pressed():
	Global.wood +=1
	set_res_info(Global.wood, Global.stone, Global.gold)
func _on_get_stone_pressed():
	Global.stone +=1
	set_res_info(Global.wood, Global.stone, Global.gold)
func _on_get_gold_pressed():
	Global.gold +=1
	set_res_info(Global.wood, Global.stone, Global.gold)
	
func _ready():
	set_res_info(Global.wood, Global.stone, Global.gold)









