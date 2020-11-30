#connect to Authentication server to receive token

extends Node
#network  setup
var network = NetworkedMultiplayerENet.new()
var gateway_api = MultiplayerAPI.new()
var ip = "127.0.0.1"
var port = 1912

onready var gameserver = get_node("/root/Server")


func _ready():
	ConnectToServer()

func _process(delta):
	#check whether custom multiplayer api is set
	if  get_custom_multiplayer() == null:
		return
	#check whether custom multiplayer network is set
	if not custom_multiplayer.has_network_peer():
		return
	#start custom_multiplayer poll
	custom_multiplayer.poll();

func ConnectToServer():
	network.create_client(ip ,port)
	set_custom_multiplayer(gateway_api)
	custom_multiplayer.set_root_node(self)
	custom_multiplayer.set_network_peer(network)
	#connect signals
	network.connect("connection_failed" ,self ,"_OnConnectionFailed")
	network.connect("connection_succeeded" ,self ,"_OnConnectionSucceeded")

func _OnConnectionFailed():
	
	print("Failed to connect to game server hub")
	


func _OnConnectionSucceeded():
	print("Succesfully connected to game server hub")
	

remote func ReceiveLoginToken(token):
	gameserver.expected_tokens.append(token)
