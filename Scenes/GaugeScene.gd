extends Control


# Declare member variables here. Examples:

# var b = "text"
var pressure = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	
	pass


func _on_TextureProgress_value_changed():
	pass # Replace with function body.


func _on_Button_button_down():
	pressure = pressure + 0.1
	UpdateUI()
	pass # Replace with function body.

func UpdateUI():

