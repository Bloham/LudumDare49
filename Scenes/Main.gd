extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressure = 1

# Called when the node enters the scene tree for the first time.


func _process(delta):
	pressure = pressure +0.1
	UpdateUI()
	if pressure >= 100:
		EndGame()
	if pressure <= 0:
		pressure = 0

func UpdateUI():
	$Level1/PressureGauge.value = pressure

func EndGame():
	$WON.visible = true
	set_process(false)
	$Level1.visible = false

func _AddPressure(value):
	pressure += value
