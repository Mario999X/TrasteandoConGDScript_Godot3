extends KinematicBody2D

const bullet = preload("res://Bala_jugador.tscn")

export var speed = 175
export var ammo = 5

var can_shoot = true

var screen_size 

func _ready():
	screen_size = get_viewport_rect().size

func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		velocity.y -=1
	if Input.is_action_pressed("move_down"):
		velocity.y +=1  
	if Input.is_action_pressed("move_left"):
		velocity.x -=1  
	if Input.is_action_pressed("move_right"):
		velocity.x +=1  
	move_and_collide(velocity * speed * delta)
	
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
	if Input.is_action_just_pressed("shoot"):
		shoot()
	


func reload():
	can_shoot = false
	$ReloadTimer.start()


func shoot():
	if can_shoot:
		print(str(ammo))
		ammo -=1
		
		var bullet_instance = bullet.instance()
	
		get_parent().add_child(bullet_instance)
	
		bullet_instance.global_position = $ZonaDisparo.global_position
	
		var target = get_global_mouse_position()
	
		var direction = bullet_instance.global_position.direction_to(target).normalized()
	
		bullet_instance.set_direction(direction)
		
		if ammo < 1:
			reload()
	else:
		print("Recargando...")
	


func _on_ReloadTimer_timeout():
	ammo = 5
	can_shoot = true


func _on_Diana_death_player():
	queue_free()
	

func hit_by_bullet():
	print("He sido alcanzando")
	queue_free()
