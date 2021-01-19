#client side gateway

extends Node
#primary network 
var network #= NetworkedMultiplayerENet.new()
#secondary network api for gateway -> authorization
var gateway_api #= MultiplayerAPI.new()
var ip = "127.0.0.1"
var port = 1910
var cert = load("res://Resources/Certificate/x509_Certificate.crt")

var username 
var password
var new_account = false

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

func ConnectToServer(_username ,_password ,_new_account):
	network = NetworkedMultiplayerENet.new()
	gateway_api = MultiplayerAPI.new()
	#using dtls encryption
	network.set_dtls_enabled(true)
	#set to true when using signed certificate
	network.set_dtls_verify_enabled(false)
	network.set_dtls_certificate(cert)
	
	username = _username
	password = _password
	new_account = _new_account
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
	get_node("../SceneHandler/Map/GUI/LoginScreen").create_account_button.disabled = false
	get_node("../SceneHandler/Map/GUI/LoginScreen").confirm_button.disabled = false
	get_node("../SceneHandler/Map/GUI/LoginScreen").back_button.disabled = false

func _OnConnectionSucceeded():
	print("Succesfully connected to login server")
	if new_account == true:
		RequestCreateAccount()
	else:
		#on connection success request login
		RequestLogin()

func RequestLogin():
	print("Connecting to gateway to request login")
	#make login request to gateway
	rpc_id(1,"LoginRequest", username ,password)
	username = ""
	password = ""

remote func ReturnLoginRequest(results,token):
	print("result received")
	#login success
	if results == true:
		#connect to game server
		Server.token = token
		Server.ConnectToServer()
		#remove login screen
		#get_node("../SceneHandler/Map/GUI/LoginScreen").queue_free()
		get_node("../SceneHandler/Map/Room/Player").set_physics_process(true)
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
		
	else:
		#login failed
		print("Please provide correct username and password")
		get_node("../SceneHandler/Map/GUI/LoginScreen").login_button.disabled = false
		get_node("../SceneHandler/Map/GUI/LoginScreen").create_account_button.disabled = false
		#disconnect signals for gateway
	network.disconnect("connection_failed" ,self ,"_OnConnectionFailed")
	network.disconnect("connection_succeeded" ,self ,"_OnConnectionSucceeded")
	

func RequestCreateAccount():
	print("Requesting new account")
	rpc_id(1 ,"CreateAccountRequest", username ,password)
	username =""
	password =""
	
remote func ReturnCreateAccountRequest(results , message):
	print("result received")
	
	if results == true:
		print("Account created please proceed with logging in")
		get_node("../SceneHandler/Map/GUI/LoginScreen").confirm_button.disabled = true
		get_node("../SceneHandler/Map/GUI/LoginScreen").back_button.disabled = true
		get_node("../SceneHandler/Map/GUI/LoginScreen")._on_BackButton_pressed()
	else:
		if message == 1:
			print("Couldn't create account ,please try again")
		elif message == 2:
			print("Username already exists, please use a different username")
		get_node("../SceneHandler/Map/GUI/LoginScreen").confirm_button.disabled = false
		get_node("../SceneHandler/Map/GUI/LoginScreen").back_button.disabled = false
		#disconnect signals for gateway
	network.disconnect("connection_failed" ,self ,"_OnConnectionFailed")
	network.disconnect("connection_succeeded" ,self ,"_OnConnectionSucceeded")


	
