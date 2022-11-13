extends Area

var locked = true

func _ready():
	$Light.light_color = Color(1,0,0,1) #Red

func unlock():
	locked = false
	$Light.light_color = Color(0,1,0,1) #Green

func _on_Exit_body_entered(body):
	if body.name == "Player" and locked == false:
		queue_free() #Change this to a scene change later.
