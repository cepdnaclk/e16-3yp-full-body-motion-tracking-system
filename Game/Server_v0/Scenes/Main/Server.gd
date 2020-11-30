#create a Node named server
extends Node

var network = NetworkedMultiplayerENet.new()
var port = 1909
var max_players = 100

onready var player_verification_process = get_node("PlayerVerification")
onready var combat_function = get_node("Combat")
#store expecting token from client
var expected_tokens = []

func _ready():
	StartServer()

func StartServer():
	network.create_server(port, max_players)
	get_tree().set_network_peer(network)
	print("Server started")

	network.connect("peer_connected" , self ,"_Peer_Connected")
	network.connect("peer_disconnected" ,self ,"_Peer_Disconnected")

func _Peer_Connected(player_id):
	print("User " + str(player_id) + " is connected")
	#start player verification node
	player_verification_process.start(player_id)

func _Peer_Disconnected(player_id):
	print("User "+ str(player_id) + " is disconnected")
	get_node(str(player_id)).queue_free()

#--------------server functions-------------

func _on_TokenExpiration_timeout():
	#check token time every 10s
	var current_time = OS.get_unix_time()
	var token_time
	if expected_tokens == []:
		pass
	else:
		for i in range(expected_tokens.size() -1 ,-1,-1):
			token_time = int(expected_tokens[i].right(64))
			#remove token generated time is more than 30s
			if current_time - token_time >= 30:
				expected_tokens.remove(i)
	print("Expected Token:")
	print(expected_tokens)

func FetchToken(player_id):
	#tell client to send token
	rpc_id(player_id ,"FetchToken")

remote func ReturnToken(token):
	#verify received token from client
	var player_id = get_tree().get_rpc_sender_id()
	player_verification_process.Verify(player_id ,token)

func ReturnTokenVerificationResults(player_id ,result):
	#send verification result ot client
	rpc_id(player_id ,"ReturnTokenVerificationResults" ,result)

remote func FetchSkillDamage(skill_name, requester):
	print("ask for damage data")
	#get requested peer id :inside player scene  
	var player_id  = get_tree().get_rpc_sender_id()
	# add to autoload and call combat.FtechSkillDamage(skill_name)
	var damage = combat_function.FetchSkillDamage(skill_name ,player_id)
	rpc_id(player_id ,"ReturnSkillDamage" ,damage ,requester)
	print("sending "+str(damage) + "to player")

remote func FetchPlayerStats():
	var player_id = get_tree().get_rpc_sender_id()
	var player_stats = get_node(str(player_id)).player_stats	
	rpc_id(player_id,"ReturnPlayerStats",player_stats)
