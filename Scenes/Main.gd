extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressure = 1
var gameIsOver

# Called when the node enters the scene tree for the first time.
func _ready():
	$WinTimer.start()

func _process(delta):
	pressure = pressure +0.1
	UpdateUI()
	if pressure >= 100:
		EndGame()
		$Menue/Lost.visible = true
	if pressure <= 0:
		pressure = 0

func UpdateUI():
	$Level1/PressureGauge.value = pressure

func EndGame():
	$Menue.visible = true
	set_process(false)
	$Level1.visible = false
	gameIsOver = true

func _AddPressure(value):
	pressure += value


func _restartGame():
	get_tree().reload_current_scene()


func _on_WinTimer_timeout():
	if gameIsOver == false:
		EndGame()
		$Menue/Won.visible = true
	
