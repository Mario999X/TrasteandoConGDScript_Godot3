extends Node


var message_error = "Error en algun campo"
var url_login = "https://jsonplaceholder.typicode.com/users"

func _ready():
	pass

func prepare_query():
	return {"username": $UsernameText.text, "password": $PasswordText.text}
	

func _on_LoginBtn_pressed():
	var headers = ["Content-Type: application/json"]
	var use_ssl = false
	$Login.request(url_login, headers, use_ssl, HTTPClient.METHOD_POST, to_json(prepare_query()))
	

func _on_Login_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	print(json.result)


func _on_UsernameText_focus_entered():
	$UsernameText.text = ""


func _on_PasswordText_focus_entered():
	$PasswordText.text = ""
