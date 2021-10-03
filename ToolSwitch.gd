extends Control

signal AddPressure()

var rng = RandomNumberGenerator.new()
var pressure

func _ready():
	rng.randomize()
	$Timer.wait_time = rng.randf_range(5,25)
	print($Timer.wait_time)
	pressure = rng.randf_range(2, 10)
	

func _on_Timer_timeout():
	var _checkButton = $CheckButton
	if _checkButton.disabled == true:
		_checkButton.disabled = false
	else:
		_checkButton.disabled = true


func _on_CheckButton_toggled(button_pressed):
	$Timer.start()
	$CheckButton.disabled = true
	emit_signal("AddPressure", -pressure)
