extends Node2D

var save_path = "res://SaveSystem/save-file.cfg"
var password = OS.get_unique_id() # Obtenemos el id unico del usuario y su plataforma
var config = ConfigFile.new()

# Cargamos el archivo encriptado usando la clave.
var load_response = config.load_encrypted_pass(save_path, password)

func _ready():
	pass 

func save_value(section, key, value):
	config.set_value(section, key, value)
	config.save_encrypted_pass(save_path, password)

func load_value(section, key):
	return config.get_value(section, key, "Introduzca un dato que se almacenara en la configuración de manera persistente.")

func reset_value(section):
	config.erase_section(section)
