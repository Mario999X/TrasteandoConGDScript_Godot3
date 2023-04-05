extends Node

var message_error = "Error en ID o Nombre"
var message_error_connection = "Error en la conexión"

signal request_time
signal request_over

func _ready():
	pass


func _on_BotonConsulta_pressed():
	if $Busqueda.text.strip_edges() == "":
		$Busqueda.text = "Vacio"

	$HTTPRequestPokemon.request("https://pokeapi.co/api/v2/pokemon/" + $Busqueda.text.to_lower().strip_edges())
	emit_signal("request_time")


func _on_HTTPRequestPokemon_request_completed(_result, response_code, _headers, body):
	print("Nombre/ID introducido: " + $Busqueda.text.to_lower())
	
	emit_signal("request_over")
	
	print(response_code)
	
	if response_code == 404:
		$JsonRecibido.text = message_error
		$InformacionObtenida.text = message_error
	# Si se ha ido la conexion, y salta el timeout, la respuesta es 0
	elif response_code == 0:
		$JsonRecibido.text = message_error_connection
		$InformacionObtenida.text = message_error_connection
	else:
		var json = JSON.parse(body.get_string_from_utf8())
		if json.error == 0:
			$JsonRecibido.text = str(json.result)
		else:
			$JsonRecibido.text = message_error
		show_especific_data(json)
	


# El diccionario era para practicar un poco las colecciones, realmente es innecesario
func show_especific_data(json):
	var diccionario = {}
	var key_1 = "name"
	var key_2 = "base_experience"
	
	if json.error == 0:
		diccionario = {key_1: json.result["name"], key_2: json.result["base_experience"]}
		
		print("Entrada de diccionario: " + str(diccionario["base_experience"]))
		$InformacionObtenida.text = str(diccionario)
	else:
		$InformacionObtenida.text = message_error


func _on_LineEdit_focus_entered():
	$Busqueda.text = ""
