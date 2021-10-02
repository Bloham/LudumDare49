extends HScrollBar


signal AddPressure (value)


func _on_Scrollbar_scrolling():
	if value < max_value:
		emit_signal("AddPressure", 0.2)
	if value == max_value:
		queue_free()
