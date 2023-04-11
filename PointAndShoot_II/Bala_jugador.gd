extends Area2D

var speed = 10

var direction := Vector2.ZERO

func _physics_process(delta):
	if direction != Vector2.ZERO:
		var velocity = direction * speed
		
		global_position += velocity


func set_direction(direction: Vector2):
	self.direction = direction



func _on_Bala_area_entered(area):
	if area.name == "Diana":
		print("Impacto contra Diana")
		queue_free()
	if "im_bala_enemigo" in area:
		print("Impacto contra bala enemiga")
		queue_free()
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
