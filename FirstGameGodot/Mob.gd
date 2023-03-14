extends RigidBody2D

# En este caso, de forma aleatoria ejecutaremos una de las animaciones
func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	
	

# Cuando salga del campo se vision, envia una señal y se eliminan automaticamente
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
