extends KinematicBody2D

var speed = 250
var velocity = Vector2.ZERO

func _ready():
	# Contador para que el jugador pueda ver la pantalla del nivel luego del menú de carga.
	yield(get_tree().create_timer(0.5), "timeout")
	
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]


func _physics_process(delta):
	var collision = move_and_collide(velocity * speed * delta)
	
	if collision:
		var body = collision.collider
		#print(str(speed))
		
		velocity = velocity.bounce(collision.normal)
		$BounceSound.play()
		
		if body is KinematicBody2D: # Con esto hacemos que solo gane velocidad al rebotar contra este tipo
			speed_the_ball()


func stop_ball():
	speed = 0
	

func restart_ball():
	speed = 200
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]
	

func speed_the_ball():
	speed = speed + 25
