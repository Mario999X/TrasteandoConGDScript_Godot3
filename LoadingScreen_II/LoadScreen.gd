extends Control


func _on_Main_request_time():
	visible = true
	$Sprite.playing = true


func _on_Main_request_over():
	visible = false
	# Para dejar el sprite en su primera posicion y que no este en costante ejecucion
	$Sprite.playing = false
	$Sprite.frame = 0
