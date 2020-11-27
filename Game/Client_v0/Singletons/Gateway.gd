#client side gateway

extends Node
#primary network 
var network #= NetworkedMultiplayerENet.new()
#secondary network api for gateway -> authorization
var gateway_api #= MultiplayerAPI.new()
var ip = "127.0.0.1"
var port = 1910

var username 
var password

func _ready():
	pass

func _process(delta):
	#check whether custom multiplayer api is set
	if  get_custom_multiplayer() == null:
		return
	#check whether custom multiplayer network is set
	if not custom_multiplayer.has_network_peer():
		return
	#start custom_multiplayer poll
	custom_multiplayer.poll();

func ConnectToServer(_username ,_password):
	network = NetworkedMultiplayerENet.new()
	gateway_api = MultiplayerAPI.new()
	username = _username
	password = _password
	#create connetion to gateway
	network.create_client(ip ,port)
	set_custom_multiplayer(gateway_api)
	custom_multiplayer.set_root_node(self)
	custom_multiplayer.set_network_peer(network)
	#connect signals
	network.connect("connection_failed" ,self ,"_OnConnectionFailed")
	network.connect("connection_succeeded" ,self ,"_OnConnectionSucceeded")

func _OnConnectionFailed():
	#on connection failed enable login button
	print("Failed to connect to login server")
	print("Pop-up server offline or something")
	get_node("../SceneHandler/Map/GUI/LoginScreen").login_button.disabled = false


func _OnConnectionSucceeded():
	print("Succesfully connected to login server")
	#on connection success request login
	RequestLogin()

func RequestLogin():
	print("Connecting to gateway to request login")
	#make login request to gateway
	rpc_id(1,"LoginRequest", username ,password)
	username = ""
	password = ""

remote func ReturnLoginRequest(results):
	print("result received")
	#login success
	if results == true:
		#connect to game server
		Server.ConnectToServer()
		#remove login screen
		get_node("../SceneHandler/Map/GUI/LoginScreen").queue_free()
	else:
		#login failed
		print("Please provide correct username and password")
		get_node("../SceneHandler/Map/GUI/LoginScreen").login_button.disabled = false
		#disconnect signals for gateway
		network.disconnect("connection_failed" ,self ,"_OnConnectionFailed")
		network.disconnect("connection_succeeded" ,self ,"_OnConnectionSucceeded")
	
