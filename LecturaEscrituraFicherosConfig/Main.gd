extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_DatoParaAlmacenar_focus_entered():
	$DatoParaAlmacenar.text = ""


func _on_SaveBtn_pressed():
	if $DatoParaAlmacenar.text == "":
		$DatoParaAlmacenar.text = get_node("/root/SaveSystem").load_value("Textos", "TextoUno")
	else:
		get_node("/root/SaveSystem").save_value("Textos", "TextoUno", $DatoParaAlmacenar.text)

func _on_LoadBtn_pressed():
	$DatoParaAlmacenar.text = get_node("/root/SaveSystem").load_value("Textos", "TextoUno")


func _on_ResetBtn_pressed():
	get_node("/root/SaveSystem").reset_value()
