#load player data

extends Node

var PlayerIDs

func _ready():
	var PlayerIds_data_file = File.new()
	PlayerIds_data_file.open("res://Data/playerIds.json" ,File.READ)
	var PlayerIds_data_json = JSON.parse(PlayerIds_data_file.get_as_text())
	PlayerIds_data_file.close()
	PlayerIDs = PlayerIds_data_json.result
