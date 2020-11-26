#create a Node named server
extends Node

var network = NetworkedMultiplayerENet.new()
var port = 1909
var max_players = 100

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

func _Peer_Disconnected(player_id):
	print("User "+ str(player_id) + " is disconnected")

#--------------server functions-------------

remote func FetchSkillDamage(skill_name, requester):
	print("ask for damage data")
	#get requested peer id :inside player scene  
	var player_id  = get_tree().get_rpc_sender_id()
	# add to autoload and call combat.FtechSkillDamage(skill_name)
	var damage = get_node("Combat").FetchSkillDamage(skill_name)
	rpc_id(player_id ,"ReturnSkillDamage" ,damage ,requester)
	print("sending "+str(damage) + "to player")
