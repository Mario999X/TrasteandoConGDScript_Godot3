extends Area2D

signal death_player

func _on_Diana_area_entered(area):
	if area.name == "Bala":
		print("IMPACTO")
		queue_free()


func _on_Diana_body_entered(body):
	print("JUGADOR ALCANZADO")
	emit_signal("death_player")
