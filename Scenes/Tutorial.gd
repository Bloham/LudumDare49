extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if percent_visible <= 100:
		percent_visible = percent_visible + 0.001

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass