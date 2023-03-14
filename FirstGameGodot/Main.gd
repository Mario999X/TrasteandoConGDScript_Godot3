extends Node

export(PackedScene) var mob_scene
var puntuacion

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()
	$HUD.show_game_over()
	$DeathSound.play() #Para que el sonido solo se reproduzca 1 vez, ir a pestaña importar
	

func new_game():
	puntuacion = 0
	$Jugador.start($StartPosition.position)
	$StartTimer.start()
	$HUD.update_score(puntuacion)
	$HUD.show_message("Prepárate!")
	get_tree().call_group("mobs", "queue_free")

# Se suma 1 punto
func _on_ScoreTimer_timeout():
	puntuacion += 1
	$HUD.update_score(puntuacion)

# Comienza los demas temporizadores
func _on_StartTimer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()

# Comienza la actividad de los enemigos
func _on_MobTimer_timeout():
	# Creamos instancia de la escena Mob/Enemigo
	var mob = mob_scene.instance()
	
	# Escogemos un lugar aleatorio del path2D que marcamos
	var mob_spawn_location = get_node("MobPath/MobSpawnLocation")
	mob_spawn_location.offset = randi()
	
		# Los enemigos recorreran una linea recta, lo indicamos aqui
	var direccion = mob_spawn_location.rotation + PI / 2
	
	 # Marcamos la posicion del enemigo de forma aleatoria dentro del respawn
	mob.position = mob_spawn_location.position
	
	# Agregamos un poco de aleatoriedad a la direccion
	direccion += rand_range(-PI / 4, PI / 4)
	mob.rotation = direccion
	
	# Indicamos la velocidad del enemgio y el rango
	var velocity = Vector2(rand_range(150.0, 250.0), 0.0)
	mob.linear_velocity = velocity.rotated(direccion)
	
	# Aparece EL Bicho
	add_child(mob)
