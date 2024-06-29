extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.start("level_2") 


func _on_button_button_down():
	get_tree().change_scene_to_file("res://src/scenes/SecondPotion.tscn")


