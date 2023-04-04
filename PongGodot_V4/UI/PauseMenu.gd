extends Control

var is_paused = false setget set_paused

func set_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	

func _unhandled_key_input(event):
	if event.is_action_pressed("pausar_juego"):
		self.is_paused = !is_paused

func _on_ResumeButton_pressed():
	self.is_paused = false


func _on_ExitButton_pressed():
	get_tree().quit()


func _on_MenuButton_pressed():
	# Si no se le quita la pausa, el menu tambien estara pausado.
	self.is_paused = !is_paused
	# IMPORTANTE, si no, el nivel sigue cargado.
	get_parent().queue_free()
	
	get_tree().change_scene("res://Menu/MainMenu.tscn")
	
