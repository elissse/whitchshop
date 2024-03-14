extends TextureButton
class_name Cauldron

var potion = {}
var ingredients = 0
var recipe = {}
var result = 0

	
func _can_drop_data(at_position, ingredient):
	return true
	
	
func _drop_data(at_position, ingredient):
	potion[ingredient] = null
	ingredients += 1
	if ingredients == 2 and _check_the_potion() == 2:
		get_tree().change_scene_to_file("res://making_potions.tscn")
	elif ingredients == 2:
		get_tree().change_scene_to_file("res://world.tscn")	
		
	
func _check_the_potion():
	for item in recipe:
		if potion.has(item):
			result += 1
	return result
