extends KinematicBody2D

var speed = 200
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]


func _physics_process(delta):
	var colision = move_and_collide(velocity * speed * delta)
	
	if colision:
		velocity = velocity.bounce(colision.normal)
		$BounceSound.play()
		speed_the_ball()

func stop_ball():
	speed = 0
	

func restart_ball():
	speed = 200
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]
	

func speed_the_ball():
	speed = speed + 25
