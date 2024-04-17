extends TextureButton
class_name Cauldron

var potion = {}
var ingredients = 0
var recipe = {}
var result = 0

	
func _can_drop_data(_at_position, _ingredient):
	return true
	
	
func _drop_data(_at_position, ingredient):
	potion[ingredient] = null
	print("hi")
	ingredients += 1
	print(ingredients)
	if ingredients == 4 and _check_the_potion() == 4:
		print("good job")
		#get_tree().change_scene_to_file("res://Level_1.tscn")
	elif ingredients == 4:
		print("bad job")
		#get_tree().change_scene_to_file("res://Level_2.tscn")	
		
	
func _check_the_potion():
	for item in recipe:
		if potion.has(item):
			result += 1
	return result
