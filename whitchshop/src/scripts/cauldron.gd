extends TextureButton
class_name Cauldron

var potion = {}
var ingredients = 0
var recipe = {}
var next_level = ""
var result = 0
var good_potion = "res://src/scenes/Good_Potion.tscn"
var bad_potion = "res://src/scenes/Bad_Potion.tscn"



func _can_drop_data(at_position, ingredient):
	return true
	
	
func _drop_data(at_position, ingredient):
	potion[ingredient] = null
	ingredients += 1
	print(ingredient)
	if ingredients == 4 and _check_the_potion() == 4:
		print("good potion")
		get_tree().change_scene_to_file(good_potion)
	elif ingredients == 4:
		print("bad potion")
		get_tree().change_scene_to_file(bad_potion)
		
func sleep(sec):
	await get_tree().create_timer(sec).timeout
	
func _check_the_potion():
	for item in recipe:
		print(item)
		if potion.has(item):
			result += 1
	return result
