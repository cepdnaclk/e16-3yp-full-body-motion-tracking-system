#handle scene in game
extends Node


var mapstart = preload("res://Scenes/MainScenes/Map.tscn")

func _ready():
	var mapstart_instance = mapstart.instance()
	add_child(mapstart_instance)
	mapstart_instance.get_node("GUI/PlayerStats").hide()
	

func _process(delta):
	if Input.is_action_just_pressed("ui_stats"):
		_showPlayerStats()

func _showPlayerStats():
	var stats = get_node("./Map/GUI/PlayerStats")
	if stats.is_visible_in_tree():
		stats.hide()
	else:
		Server.FetchPlayerStats()
		stats.show()
