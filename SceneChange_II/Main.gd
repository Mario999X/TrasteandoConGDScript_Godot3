extends Node


func _on_Escena1_btn_pressed():
	#get_tree().change_scene("res://menus/Escena1.tscn") # Version sin animacion
	SceneTransition.change_scene("res://menus/Escena1.tscn") # Version con animacion


func _on_Escena2_btn_pressed():
	SceneTransition.change_scene("res://menus/Escena2.tscn")


func _on_Exit_btn_pressed():
	get_tree().quit()
