extends Node2D

enum PopupIds {
	POSICION_RATON = 100,
	SALUDO
}

var last_mouse_position

onready var _pm = $PopupMenu

func _ready():
	_pm.add_item("Mostrar posición del raton", PopupIds.POSICION_RATON)
	_pm.add_item("Mostrar saludo", PopupIds.SALUDO)
	_pm.connect("id_pressed", self, "_on_PopupMenu_id_pressed")
	_pm.connect("index_pressed", self, "_on_PopupMenu_index_pressed")
	

func _input(event):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_RIGHT:
		last_mouse_position = get_global_mouse_position()
		_pm.popup(Rect2(last_mouse_position.x, last_mouse_position.y, _pm.rect_size.x, _pm.rect_size.y))


# Dos formas de realizar acciones con este tipo de menú
func _on_PopupMenu_id_pressed(id):
	#print_debug(id)
	
	match id:
		PopupIds.POSICION_RATON:
			print(last_mouse_position)
		PopupIds.SALUDO:
			print("hola")
