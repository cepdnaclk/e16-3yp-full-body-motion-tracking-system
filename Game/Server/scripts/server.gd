extends Node

var network = NetworkedMultiplayerENet.new()
const PORT:int = 1909
const MAXPLAYERS:int = 10

onready var world = get_node("World")
func _ready():
	_start_server()
	
	

func _start_server():
	network.create_server(PORT,MAXPLAYERS)
	get_tree().set_network_peer(network)
	print("server start..")
	
	network.connect("peer_connected" ,self ,"_Peer_Connected")
	network.connect("peer_disconnected", self ,"_Peer_Disconnected")
	
	create_map()
	if is_network_master():
		print("network master")
	
	
	
func _Peer_Connected(playerId):
	print(str(playerId) + " connected")
	
	

func _Peer_Disconnected(playerId):
	print(str(playerId) + " disconnected")
	for p in world.get_node("Players").get_children():
		if int(p.name) == playerId:
			world.get_node("Players").remove_child(p)
			p.queue_free()
	
func create_map():
	
	var map = load("res://Scenes/map.tscn").instance()
	world.add_child(map)
	print("world created")

	
