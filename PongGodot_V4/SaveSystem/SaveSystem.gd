extends Node

var save_path = "res://SaveSystem/save-file.cfg"
var config = ConfigFile.new()

var load_response = config.load(save_path)

func _ready():
	var file = File.new()
	
	if file.file_exists(save_path):
		print("Config Found! | Loading...")
	else:
		print("Config Not Found! | Creating...")
		save_value("Configuration", "Lenguage", "en")

func save_value(section, key, value):
	config.set_value(section, key, value)
	config.save(save_path)

func load_value(section, key):
	return config.get_value(section, key)

func reset_value(section):
	config.erase_section(section)
