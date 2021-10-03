extends Control

signal AddPressure()

func _on_Timer_timeout():
	var _checkButton = $TextureButton
	if _checkButton.disabled == true:
		_checkButton.disabled = false
	else:
		_checkButton.disabled = true

func _on_TextureButton_pressed():
	$Timer.start()
	$TextureButton.disabled = true
	emit_signal("AddPressure", 20)
