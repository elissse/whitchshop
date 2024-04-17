extends TextureButton
class_name Ingredient

var dropped_on_target: bool = false
var DRAGPREVIEW = preload("res://src/scripts/drag_preview.gd")
var ingredient

func _ready():
	add_to_group("DRAGGABLE")
	pass
	
func _get_drag_data(_at_position: Vector2):
	#var dragPreview = DRAGPREVIEW.new()
	#dragPreview.texture = texture_normal
	var prev = TextureButton.new()
	prev.texture_normal = texture_normal
	set_drag_preview(prev)
	#add_child(dragPreview) 
	return ingredient 

	
func _can_drop_data(_at_position, _ingredient):
	return false
	
	

	
