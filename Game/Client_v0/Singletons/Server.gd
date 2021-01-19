#client side server
extends Node

var network = NetworkedMultiplayerENet.new()
#"192.168.56.101"
var ip = "127.0.0.1"
var port = 1909
var CONNECTED = false

#------------clock variables--------------------
var decimal_collector :float = 0
var latency = 0
var latency_array = []
var delta_latency = 0
var client_clock = 0
# -------------------------------------------
var token

func _ready():
	#ConnectToServer()
	pass
	
func _physics_process(delta): 
	#delat in msecs convert to secs
	client_clock += int(delta * 1000) + delta_latency
	delta_latency =0
	# decimal after convert delta into integer
	decimal_collector += (delta *1000) - int(delta *1000)
	if decimal_collector >= 1.00:
		client_clock +=1
		decimal_collector -= 1.00

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
	# start clock sync
	rpc_id(1 ,"FetchServerTime" ,OS.get_system_time_msecs())
	#latency adjusment
	var timer = Timer.new()
	timer.wait_time = 0.5
	timer.autostart = true
	timer.connect("timeout" ,self ,"DetermineLatency")
	self.add_child(timer)
	
remote func ReturnServerTime(server_time ,client_time):
	latency = (OS.get_system_time_msecs() - client_time ) /2
	client_clock = server_time + latency 
	
func DetermineLatency(client_time):
	rpc_id(1 ,"DetermineLatency" , OS.get_system_time_msecs())
	
remote func ReturnLatency(client_time):
	latency_array.append(( OS.get_system_time_msecs() -client_time ) /2)
	# collect 9 latency values
	if latency_array.size() == 9:
		var total_latency = 0
		latency_array.sort()
		#to remove extreme value cause by packet loss get mid point 
		var mid_point = latency_array[4]
		for i in range(latency_array.size() -1 ,-1,-1):
			if latency_array[i] > ( 2* mid_point) and latency_array[i] > 20:
				#remove that values
				latency_array.remove(i)
			else:
				total_latency += latency_array[i]
		
		delta_latency = (total_latency / latency_array.size()) - latency 
		latency = total_latency / latency_array.size()
		print("New latency ",latency)
		print("Delta latency" ,delta_latency)
		latency_array.clear()
		
				
			
	
remote func FetchToken():
	rpc_id(1,"ReturnToken" ,token)

remote func ReturnTokenVerificationResults(result):
	if result == true :
		get_node("../SceneHandler/Map/GUI/LoginScreen").queue_free()
		print("Successful token verfication")
	else:
		print("Login failed , please try again")
		get_node("../SceneHandler/Map/GUI/LoginScreen").login_button.disabled = false
		get_node("../SceneHandler/Map/GUI/LoginScreen").create_account_button.disabled = false
#-------------------------------------
func FetchSkillDamage(skill_name ,requester):
	#call the server
	rpc_id(1 , "FetchSkillDamage" ,skill_name ,requester)

remote func ReturnSkillDamage(s_damage, requester):
	#assign data to node
	instance_from_id(requester).SetDamage(s_damage)
	
func FetchPlayerStats():
	rpc_id(1,"FetchPlayerStats")

remote func ReturnPlayerStats(stats):
	get_node("/root/SceneHandler/Map/GUI/PlayerStats").LoadPlayerStats(stats)
	
	
remote func SpawnNewPlayer(player_id ,spawn_position):
	#server send new player spawn position
	get_node("../SceneHandler/Map").SpawnNewPlayer(player_id ,spawn_position)

remote func DespawnPlayer(player_id):
	#remove player
	get_node("../SceneHandler/Map").DespawnPlayer(player_id )
	
func SendPlayerState(player_state):
	#send player state to server
	if CONNECTED:
		
		rpc_unreliable_id(1 ,"ReceivePlayerState",player_state)
	
remote func ReceiveWorldState(world_state):
	get_node("../SceneHandler/Map").UpdateWorldState(world_state)
