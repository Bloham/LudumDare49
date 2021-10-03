extends Control

signal AddPressure()

var rng = RandomNumberGenerator.new()
var pressure

func _ready():
	rng.randomize()
	$Timer.wait_time = rng.randf_range(7,25)
	print($Timer.wait_time)
	pressure = rng.randf_range(5, 15)

func _on_Timer_timeout():
	var _checkButton = $TextureButton
	_checkButton.disabled = false

func _on_TextureButton_pressed():
	$Timer.start()
	$TextureButton.disabled = true
	emit_signal("AddPressure", -pressure)
