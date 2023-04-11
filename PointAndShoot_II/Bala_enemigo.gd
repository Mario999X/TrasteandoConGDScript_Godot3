extends Area2D

const speed = 100

# Cuando Godot saca muchos elementos del mismo objeto, el nombre puede variar, con esta variable se soluciona, ver Bala_jugador y comparar con Diana
var im_bala_enemigo = true

func _process(delta):
	position += transform.x * speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()



func _on_Bala_enemigo_body_entered(body):
	if body.has_method("hit_by_bullet"):
		body.hit_by_bullet()
		queue_free()


func _on_Bala_enemigo_area_entered(area):
	if area.name == "Bala_jugador":
		print("He chocado contra una bala del jugador")
		queue_free()
