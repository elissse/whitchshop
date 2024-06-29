extends Node2D
var level
var potion


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start(level) 


func _on_button_button_down():
	get_tree().change_scene_to_file(potion)
