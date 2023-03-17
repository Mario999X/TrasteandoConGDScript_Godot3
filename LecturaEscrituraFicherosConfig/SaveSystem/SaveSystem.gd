extends Node2D

var save_path = "res://SaveSystem/save-file.cfg"
var config = ConfigFile.new()
# Al almacenar la carga del archivo, podemos verificar que existe para futuros proyectos.
var load_response = config.load(save_path)

func _ready():
	pass 

func save_value(section, key, value):
	config.set_value(section, key, value)
	config.save(save_path)

func load_value(section, key):
	return config.get_value(section, key, "Introduzca un dato que se almacenara en la configuración de manera persistente.")

func reset_value(section):
	config.erase_section(section)
