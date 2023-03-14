extends KinematicBody2D

export var speed = 250
var ball

func _ready():
	ball = get_parent().find_node("Bola")
	

func _physics_process(delta):
	move_and_slide(Vector2(0, get_oponent_direction()) * speed)
	

# IA basica que detecta la posicion de la bola
func get_oponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0

