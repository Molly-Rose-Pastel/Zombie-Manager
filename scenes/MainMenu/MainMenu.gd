extends Node2D


func _ready():
	GameData.main_menu = self


func _on_start_pressed():
	hide()
	GameData.level.show()

func _on_settings_pressed():
	pass # Replace with function body.

func _on_exit_pressed():
	get_tree().quit(0)
