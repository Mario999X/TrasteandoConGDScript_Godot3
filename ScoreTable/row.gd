extends HBoxContainer

signal pressed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


func _on_ViewButton_pressed():
	emit_signal("pressed", self.get_name())
