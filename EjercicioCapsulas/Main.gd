extends Node

const NUM_CAPSULAS = 100
const NUM_HILOS = 5

var mutex = Mutex.new()
var id_capsula = 0

var capsulas = []
var trabajadores = []
var exit = false

func _ready():
	print("Comenzando mision...")
	_producirCapsulas()
	
	for i in NUM_HILOS:
		var thread = Thread.new()
		trabajadores.push_back(thread)
		
		thread.start(self, "consume")
	

func consume():
	while (!exit):
		if capsulas.size() > 0:
			
			mutex.lock()
			id_capsula = id_capsula + 1
			
			var tiempo_lanzamiento = capsulas.pop_front()
			mutex.unlock()
			
			var mensaje = str("Cápsula: ", id_capsula, " | Tiempo de lanzamiento: ", tiempo_lanzamiento)
			$Mensaje.text = mensaje
			print(mensaje)
			
			#OS.delay_msec(tiempo_lanzamiento) # Opcion menos recomendable -> En milisegundos
			yield(get_tree().create_timer(tiempo_lanzamiento/1000), "timeout") # Crear temporizadores -> En segundos
		else:
			# En este caso, las capsulas se produciran antes de que se empiecen a consumir
			print("No hay cápsulas")
			exit = true
	
	get_tree().quit()

func _producirCapsulas():
	print("Preparando capsulas...")
	
	for i in NUM_CAPSULAS:
		var capsula = rand_range(1000.0, 1500.0)
		capsulas.append(capsula)
	
	return capsulas

func _exit_tree():
	for i in NUM_HILOS:
		trabajadores[i].wait_to_finish()
		
