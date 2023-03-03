extends Node

#res default var
var wood_default = 0
var stone_default = 0
var gold_default = 0

#res var
var wood = 0
var stone = 0
var gold = 0

#functions
func reset_game_variables():
	wood = wood_default
	stone = stone_default
	gold = gold_default

func create_dict_for_save():
	var dict_for_save = {
		"wood": wood,
		"stone": stone,
		"gold": gold,
	}
	return dict_for_save
	
func set_game_variables_from_load(data_from_file):
	wood = data_from_file.wood
	stone = data_from_file.stone
	gold = data_from_file.gold

func is_file_for_load_exist():
	var file = File.new()
	if file.file_exists("user://save_game.json"):
		return true
	return false

#save and load game
func save_game():
	var dict_for_save = create_dict_for_save()
	#create save file
	#file saves in folder (Project > Open Project Data Folder)
	var file = File.new()
	file.open("user://save_game.json", File.WRITE)
	file.store_line(to_json(dict_for_save))
	file.close()
	print("game is saved!")
	
func load_game():
	#open and read file from folder (Project > Open Project Data Folder)
	var file = File.new()
	file.open("user://save_game.json", File.READ)
	#get fada from file and parse JSON
	var data_from_file = parse_json(file.get_as_text())
	#set Global varibal
	set_game_variables_from_load(data_from_file)


