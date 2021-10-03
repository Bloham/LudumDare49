extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	if percent_visible <= 100:
		percent_visible = percent_visible + 0.005

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
