extends Area

onready var keyLabel = get_node_or_null("/root/Game/Player/Pivot/Camera/Keys/Border/BG/Text")

func _ready():
	print(keyLabel.name)

func _on_key_body_entered(body):
	if keyLabel != null:
		if body.name == "Player":
			Global.keyCount += 1
			keyLabel.text = "Keys: " + str(Global.keyCount)
			self.queue_free()
		
		#var exit = get_node_or_null("/root/Game/Maze/Exit")
		#if exit != null:
		#	exit.unlock()
		#	queue_free()
