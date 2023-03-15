extends Node

func _ready():
	pass


func _on_TextoParaAlmacenar_focus_entered():
	$CenterContainer/VBoxContainer/TextoParaAlmacenar.text = ""


func _on_SaveBtn_pressed():
	var message = $CenterContainer/VBoxContainer/TextoParaAlmacenar.text
	var file = File.new()
	file.open("res://data/fichero.txt", File.WRITE)
	file.flush() # Para almacenar solo un mensaje, eliminamos lo que haya dentro
	file.store_string(message)
	file.close()
	print("Mensaje almacenado:" + message)


func _on_ShowBtn_pressed():
	var file = File.new()
	file.open("res://data/fichero.txt", File.READ)
	var content = file.get_as_text()
	file.close()
	$CenterContainer/VBoxContainer/ShowMessage.text = content
