extends Control

signal AddPressure()

func _on_Timer_timeout():
	var _checkButton = $CheckButton
	if _checkButton.disabled == true:
		_checkButton.disabled = false
	else:
		_checkButton.disabled = true


func _on_CheckButton_toggled(button_pressed):
	$Timer.start()
	$CheckButton.disabled = true
	emit_signal("AddPressure", 5)
