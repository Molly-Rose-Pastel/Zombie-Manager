extends Control

func _ready():
	
	randomize()
	var random = int(rand_range(0, GameData.zombie_images.size()))
	$Sprite.texture = GameData.zombie_images[random]

func get_drag_data(_position):
	
	var data = {}
	data["origin_node"] = self
	
	var control = self.duplicate(true)
	var preview = Control.new()
	preview.add_child(control)
	control.rect_position = -0.5 * control.rect_size
	set_drag_preview(preview)

	return data
