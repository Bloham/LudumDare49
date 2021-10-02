extends Button

signal AddPressure


func _on_Button_pressed():
	emit_signal("AddPressure", 20)
	queue_free()
