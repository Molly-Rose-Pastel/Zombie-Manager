extends Node2D

export var Card : PackedScene


func _ready():
	GameData.level = self
	
	for _x in range(8):
		var unit = Card.instance()
		$roster/ScrollContainer/GridContainer.add_child(unit)

func _on_Button1_pressed():
	for room in $rooms.get_children():
		room.hide()
	$rooms/main.show()

func _on_Button2_pressed():
	for room in $rooms.get_children():
		room.hide()
	$rooms/lab.show()


func _on_to_menu_pressed():
	hide()
	GameData.main_menu.show()
