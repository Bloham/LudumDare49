extends Control

signal AddPressure(value)

func _on_Timer_timeout():
	var _checkButton = $HScrollBar
	if _checkButton.disabled == true:
		_checkButton.disabled = false
	else:
		_checkButton.disabled = true

func _on_HScrollBar_scrolling():
	var _scrollBar = $HScrollBar
	if _scrollBar.value < _scrollBar.max_value:
		emit_signal("AddPressure", 0.2)
	if _scrollBar.value == _scrollBar.max_value:
		$Timer.start()
		_scrollBar.disabled = true
