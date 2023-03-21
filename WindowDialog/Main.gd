extends Control

# Para evitar una linea demasiado larga.
onready var dialog_option = get_node("VentanaDialogo/OptionButton")

func _ready():
	var options = ["Hola", "Adiós"]
	
	for option in options:
		dialog_option.add_item(option)


func _on_ShowDialog_button_up():
	$VentanaDialogo.visible = true


func _on_SelectOption_pressed():
	$VentanaDialogo.visible = false
	$OptionSelected.text = "Has elegido la opción: " + dialog_option.get_item_text(dialog_option.selected)
	
