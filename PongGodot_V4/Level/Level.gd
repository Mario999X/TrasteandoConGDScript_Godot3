extends Node

var puntuacion_p1 = 0
var puntuacion_p2 = 0

var ganador

func _process(_delta):
	$PuntuacionP1.text = str(puntuacion_p1)
	$PuntuacionP2.text = str(puntuacion_p2)
	
	$CountdownText.text = str(int($CountdownTimer.time_left) + 1)
	
	if int(str($PuntuacionP1.text)) == 3:
		ganador = 1
		reset_score()
	if int(str($PuntuacionP2.text)) == 3:
		ganador = 2
		reset_score()

func _on_Izquierda_body_entered(_body):
	#print("Holaaaaaa")
	$Bola.position = Vector2(640, 360)
	puntuacion_p2 += 1
	score_update()


func _on_Derecha_body_entered(_body):
	$Bola.position = Vector2(640, 360)
	puntuacion_p1 += 1
	score_update()


func _on_CountdownTimer_timeout():
	get_tree().call_group("GrupoBola", "restart_ball")
	$CountdownText.visible = false
	$WinnerText.visible = false
	


func score_update():
	get_tree().call_group("GrupoBola", "stop_ball")
	$CountdownTimer.start()
	$CountdownText.visible = true
	$JugadorP1.position.x = 35
	$JugadorP1.position.y = 360
	$JugadorP2.position.x = 1280 - 35
	$JugadorP2.position.y = 360


func reset_score():
	puntuacion_p1 = 0
	puntuacion_p2 = 0
	

	# Mensaje para el vencedor
	$WinnerText.visible = true
	if ganador == 1:
		$WinnerText.text = "WINNER_P1"
		$WinnerSound.play()
	if ganador == 2:
		$WinnerText.text = "WINNER_P2"
		$LoserSound.play()
	
	ganador = 0

