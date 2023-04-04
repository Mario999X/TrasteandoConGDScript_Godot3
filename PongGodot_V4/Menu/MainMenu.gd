extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	var lenguage = get_node("/root/SaveSystem").load_value("Configuration", "Lenguage")
	
	if lenguage == "es":
		TranslationServer.set_locale("es_ES")
	if lenguage == "en":
		TranslationServer.set_locale("en_US")
	

func _on_StartBtn_pressed():
	# -- FORMA CON BARRA DE PROGRESO LUEGO DE HACERLA SINGLETON
	get_node("/root/Load").load_scene(self, "res://Level/Level.tscn")
	
	# -- FORMA NORMAL --
	#var _change = get_tree().change_scene("res://Level/Level.tscn")
	#print(str(change)) # Permitia ver si funcionaba o no


func _on_SpanishBtn_button_down():
	TranslationServer.set_locale("es_ES")
	get_node("/root/SaveSystem").save_value("Configuration", "Lenguage", "es")


func _on_EnglishBtn_button_down():
	TranslationServer.set_locale("en_US")
	get_node("/root/SaveSystem").save_value("Configuration", "Lenguage", "en")
