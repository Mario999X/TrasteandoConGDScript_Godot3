extends Node


var EFFECT = preload("res://Explosion.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	var effect = EFFECT.instance()
	add_child(effect)
	effect.global_position = Vector2($Player.position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
