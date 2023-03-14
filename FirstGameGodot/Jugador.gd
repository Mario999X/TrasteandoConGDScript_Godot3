extends Area2D
signal hit

# Velocidad del jugador al desplazarse, el export permite modificarlo desde el inspector
export var speed = 400 
# Declaramos la variable del tamaño de pantalla
var screen_size 

# Fun que se llama cuando un nodo entra en escena
func _ready(): 
	screen_size = get_viewport_rect().size
	hide() # Escondemos al jugador cuando comience el juego
	
# Fun donde se define lo que hara el jugador, se llama en cada frame
func _process(delta): 
	# El vector de movimiento del jugador, comienza a 0 para que este quieto
	var velocity = Vector2.ZERO
	
	# Opciones de movilidad coordenadas cartesianas 
	if Input.is_action_pressed("movimiento_derecha"):
		velocity.x += 1
	if Input.is_action_pressed("movimiento_izquierda"):
		velocity.x -= 1
	if Input.is_action_pressed("movimiento_superior"):
		velocity.y -= 1
	if Input.is_action_pressed("movmiento_inferior"):
		velocity.y += 1
	
	# Segun la velocidad del jugador, se muestra una animacion
	if velocity.length() > 0:
		# Con normalized hacemos que el movimiento diagonal no sea mas rapido
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	
	# Preparamos capacidad de movimiento del jugador; clamp para que no abandone la pantalla 
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
	
	# Ajustamos las animaciones segun el movimiento que se realice
	if velocity.x != 0:
		$AnimatedSprite.animation = "Caminar" # Cuidado con las mayusculas
		$AnimatedSprite.flip_v = false
		$AnimatedSprite.flip_h = velocity.x < 0
	elif velocity.y != 0:
		$AnimatedSprite.animation = "Subir"
		$AnimatedSprite.flip_v = velocity.y > 0
	

# Funcion es la encargada de realizar la opcion X si un jugador es golpeado
func _on_Jugador_body_entered(body):
	hide()
	# Cada vez que se golpea al jugador, este envia la señal "hit"
	emit_signal("hit")
	# Para evitar que se envien mas señales de las necesarias, deshabilitamos la colision
	$CollisionShape2D.set_deferred("disabled", true)

# Funcion que se llamara al comenzar un juego
func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
