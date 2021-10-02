extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressure = 99

# Called when the node enters the scene tree for the first time.


func _process(delta):
	pressure = pressure -0.1
	UpdateUI()
	if pressure >= 100 or pressure <= 0:
		EndGame()

func UpdateUI():
	$TextureProgress.value = pressure
	$Pressure_Valve.text = str(pressure)
	pass

func EndGame():
	$WON.visible = true
	set_process(false)

func _AddPressure(value):
	pressure += value
