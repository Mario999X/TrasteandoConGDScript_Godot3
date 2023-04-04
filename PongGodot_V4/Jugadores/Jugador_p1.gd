extends KinematicBody2D

export var speed = 250

func _physics_process(_delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		velocity.y -=1
	elif Input.is_action_pressed("move_down"):
		velocity.y +=1  
	move_and_slide(velocity * speed)

