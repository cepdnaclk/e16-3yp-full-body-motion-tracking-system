#gateway client connect authenticate server
"""
	--ip:Authenticate server ip
	--port1: authenticate server port
	--port2:gateway port
"""
extends Node
#setup network for client 
var network = NetworkedMultiplayerENet.new()
var ip = "127.0.0.1"
var port = 1911
var gateway_port = 1910

func _ready():
	
	for argument in OS.get_cmdline_args():
		var args = argument.split(":")
		if "--ip" in args:
			ip = args[1]
		if "--port1" in args:
			port = int(args[1])
		if "--port2" in args:
			gateway_port = int(args[1])
	ConnectToServer()

func ConnectToServer():
	network.create_client(ip ,port)
	get_tree().set_network_peer(network)
	
	print("Connected to Authenticate server on ",ip ," :",port)

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
	
remote func AuthenticateResults(result, player_id,token):
	print("results received and replying to player login request")
	Gateway.ReturnLoginRequest(result, player_id,token)

func CreateAccount(username ,password , player_id):
	print("sending out create account request")
	rpc_id(1 ,"CreateAccount",username ,password, player_id)
	
remote func CreateAccountResults(result, player_id , message):
	print("results received and replying to player create account request")
	Gateway.ReturnCreateAccountRequest(result, player_id ,message)
	
