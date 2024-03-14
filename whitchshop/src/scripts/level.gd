extends Node2D
class_name Level


var timeline
#var potion_making

func _process(delta):
	Dialogic.start(timeline)
	#get_tree().change_scene_to_file(potion_making)
	
