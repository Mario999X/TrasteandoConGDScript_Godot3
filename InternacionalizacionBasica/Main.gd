extends Node


func ready():
	set_text()

func set_text() -> void:
	$TextoPrueba.text = tr("TEXTO_PRUEBA")

func _on_ESbtn_button_down():
	TranslationServer.set_locale("es")


func _on_ENbtn_button_down():
	TranslationServer.set_locale("en")
