extends Node

var network = NetworkedMultiplayerENet.new()
var ip="127.0.0.1"
var PORT = 1909

onready var world = get_node("World")

func _ready():
	connectToServer()
	
func connectToServer():
	network.create_client(ip ,PORT)
	get_tree().set_network_peer(network)
	print("server start..")
	
	network.connect("connection_failed" ,self ,"_OnConnectionFailed")
	network.connect("connection_succeeded" ,self ,"_OnConnectionSucceed")
	
	network.connect("server_disconnected", self ,"_OnServerDisconnect")
	
	
func _OnConnectionSucceed():
	print("connection successed")
	create_map()
	var player = load("res://Scenes/Player.tscn").instance()
	player.global_transform.origin = Vector3.ZERO
	world.add_child(player)
	

func _OnConnectionFailed():
	print("connection failed")
	
func _OnServerDisconnect():
	print("server disconnected")
	network.set_network_peer(null)

puppet func register_player(playerId):
	
	var player = load("res://Scenes/Player.tscn").instance()
	player.set_name(str(playerId))
	world.get_node("Players").add_child(player)
	player.global_transform.origin = Vector3.ZERO
	print(str(playerId) + " spawned")
	
func create_map():
	
	var map = load("res://Scenes/map.tscn").instance()
	world.add_child(map)
	print("world created")
	
