extends Node

var keyCount = 0

onready var menu = get_node_or_null("/root/Game/UI/Menu")

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	menu.hide()

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		if menu == null:
			menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				menu.show()
			else:
				get_tree().paused = false
				menu.hide()
			
