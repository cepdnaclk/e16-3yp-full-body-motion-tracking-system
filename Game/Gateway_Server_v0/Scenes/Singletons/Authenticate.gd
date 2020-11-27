#gateway client connect authenticate server
extends Node
#setup network for client 
var network = NetworkedMultiplayerENet.new()
var ip = "127.0.0.1"
var port = 1911

func _ready():
	ConnectToServer()

func ConnectToServer():
	network.create_client(ip ,port)
	get_tree().set_network_peer(network)

	network.connect("connection_failed" ,self ,"_OnConnectionFailed")
	network.connect("connection_succeeded" ,self ,"_OnConnectionSucceeded")

func _OnConnectionFailed():
	print("Failed to connect to authenticate server")

func _OnConnectionSucceeded():
	print("Succesfully connected to authenticate server")


func AuthenticatePlayer(username , password ,player_id):
	print("sending out authentication request")
	#send authenticate request
	rpc_id(1 ,"AuthenticatePlayer" ,username ,password ,player_id) 
	
remote func AuthenticateResults(result, player_id):
	print("results received and replying to player login request")
	Gateway.ReturnLoginRequest(result, player_id)
