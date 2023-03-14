extends CanvasLayer

signal start_game

func _ready():
	pass # Replace with function body.

# Funcion que muestra los mensajes iniciales durante X tiempo
func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

# Funcion que muestra el mensaje de partida perdida y muestra de nuevo el boton Start
func show_game_over():
	show_message("Game Over")
	
	yield($MessageTimer, "timeout")

	$Message.text = "Ay mi madre \nel bicho!"
	$Message.show()
	
	yield(get_tree().create_timer(1), "timeout")
	$StartButton.show()

# Funcion que se usara para actualizar la puntuacion
func update_score(score):
	$ScoreLabel.text = str(score)

# Funcion que esconde el mensaje luego de X segundos
func _on_MessageTimer_timeout():
	$Message.hide()

# Funcion que al pulsar el boton Start esconde el boton y manda una señal
func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")
