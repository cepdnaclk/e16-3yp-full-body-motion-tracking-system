#client side server
extends Node

var network = NetworkedMultiplayerENet.new()
#"192.168.56.101"
var ip = "127.0.0.1"
var port = 1909
var CONNECTED = false

func _ready():
	#ConnectToServer()
	pass

func ConnectToServer():
	network.create_client(ip ,port)
	get_tree().set_network_peer(network)
	
	#connect signals 
	network.connect("connection_failed" ,self ,"_OnConnectionFailed")
	network.connect("connection_succeeded" ,self ,"_OnConnectionSucceeded")

func _OnConnectionFailed():
	print("Failed to connect")
	

func _OnConnectionSucceeded():
	print("Succesfully connected")
	CONNECTED = true

#-------------------------------------
func FetchSkillDamage(skill_name ,requester):
	#call the server
	rpc_id(1 , "FetchSkillDamage" ,skill_name ,requester)

remote func ReturnSkillDamage(s_damage, requester):
	#assign data to node
	instance_from_id(requester).SetDamage(s_damage)
	
