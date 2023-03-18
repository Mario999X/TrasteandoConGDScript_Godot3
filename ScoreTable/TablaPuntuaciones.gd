extends CanvasLayer


var row = preload("res://row.tscn")
onready var table = get_node("VBoxContainer/PanelContainer2/ScrollContainer/VBoxContainer")
var sn = 0

var url = "https://jsonplaceholder.typicode.com/users/"

func set_data(json):
	# Por cada usuario, se genera una fila
	for user in json.result:
		sn = sn+1
		var instance = row.instance()
		instance.name=str(sn)
		table.add_child(instance)
		instance.connect("pressed", self, "_on_ViewButton_pressed" )
	
		get_node("VBoxContainer/PanelContainer2/ScrollContainer/VBoxContainer/" + instance.name + "/campo_id").text = str(user.id)
		get_node("VBoxContainer/PanelContainer2/ScrollContainer/VBoxContainer/" + instance.name + "/campo_name").text = user.name
		get_node("VBoxContainer/PanelContainer2/ScrollContainer/VBoxContainer/" + instance.name + "/campo_username").text = user.username
		get_node("VBoxContainer/PanelContainer2/ScrollContainer/VBoxContainer/" + instance.name + "/campo_email").text = user.email
	

func _ready():
	$ObtenerUsuarios.request(url)


func _on_ViewButton_pressed(var index):
	print(index)


func _on_ObtenerUsuarios_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	
	set_data(json)
