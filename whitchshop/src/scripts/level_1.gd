extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start("level_1") 
	get_tree().change_scene_to_file("res://src/scenes/FirstPotion.tscn")
