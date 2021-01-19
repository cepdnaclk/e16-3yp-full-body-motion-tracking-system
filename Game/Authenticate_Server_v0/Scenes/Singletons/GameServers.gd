#connection to game servers

extends Node
#setup connection
var network = NetworkedMultiplayerENet.new()
var gateway_api = MultiplayerAPI.new()

var port = 1912
var auth_port = 1911
var max_players = 100

var gameserverlist = {}
func _ready():
	for argument in OS.get_cmdline_args():
		var args = argument.split(":")
		if "--port1" in args:
			port = int(args[1])
			
		if "--port2" in args:
			auth_port = int(args[1])
			
	StartServer()

func _process(delta):
	#start polling for custom multiplayer network
	if not custom_multiplayer.has_network_peer():
		return
	custom_multiplayer.poll()

func StartServer():
	network.create_server(port , max_players)
	set_custom_multiplayer(gateway_api)
	custom_multiplayer.set_root_node(self)
	custom_multiplayer.set_network_peer(network)
	print("Gamehub Server start on port ",port)

	network.connect("peer_connected" ,self ,"_Peer_Connected")
	network.connect("peer_disconnected" ,self ,"_Peer_Disconnected")

func _Peer_Connected(gameserver_id):
	print("Gameserver "+str(gameserver_id) +" connected")
	gameserverlist["GameServer1"] = gameserver_id

func _Peer_Disconnected(gameserver_id):
	print("Gameserver "+str(gameserver_id)+ " disconnected")

func DistributeLoginToken(token ,gameserver):
	var gameserver_peer_id = gameserverlist[gameserver]
	rpc_id(gameserver_peer_id,"ReceiveLoginToken",token)
