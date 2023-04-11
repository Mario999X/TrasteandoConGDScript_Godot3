extends Area2D

signal death_player

const bullet_scene = preload("res://Bala_enemigo.tscn")
onready var shoot_timer = $ShootTimer
onready var rotater = $Rotater

# CAMPOS A MODIFICAR PARA CAMBIAR EL PATRON DE DISPARO
const rotate_speed = 75
const shooter_timer_wait_time = 0.5
const spawn_point_count = 4
const radius = 25

func _ready():
	var stop = 2 * PI / spawn_point_count
	
	for i in range(spawn_point_count):
		var spawn_point = Node2D.new()
		var pos = Vector2(radius, 0).rotated(stop * i)
		spawn_point.position = pos
		spawn_point.rotation = pos.angle()
		rotater.add_child(spawn_point)
	
	shoot_timer.wait_time = shooter_timer_wait_time
	shoot_timer.start()
	

func _process(delta):
	var new_rotation = rotater.rotation_degrees + rotate_speed * delta
	rotater.rotation_degrees = fmod(new_rotation, 360)

func _on_Diana_area_entered(area):
	if area.name == "Bala_jugador":
		print("IMPACTO")
		queue_free()


func _on_Diana_body_entered(body):
	print("JUGADOR ALCANZADO")
	emit_signal("death_player")


func _on_ShootTimer_timeout():
	for s in rotater.get_children():
		var bullet = bullet_scene.instance()
		get_tree().root.add_child(bullet)
		bullet.position = s.global_position
		bullet.rotation = s.global_rotation
