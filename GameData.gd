extends Node

var game
var level
var main_menu

var debug = ""

onready var zombie_images = []

func _ready():
	load_images()


func load_images():
	var path = "res://sprites/proxy/zombies/"
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	while true:
		var file_name = dir.get_next()
		debug += file_name + "\n\n"
		if file_name == "":
			break
		elif file_name.ends_with(".png"):
			zombie_images.append(load(path+file_name))
	dir.list_dir_end()
