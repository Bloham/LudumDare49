extends Control

signal AddPressure()

func _on_Timer_timeout():
	var _checkButton = $TextureButton
	_checkButton.disabled = false


func _on_TextureButton_pressed():
	$Timer.start()
	$TextureButton.disabled = true
	emit_signal("AddPressure", -20)
