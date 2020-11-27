#login screen in client

extends Control

onready var username_input = get_node("Background/VBoxContainer/Username")

onready var userpassword_input = get_node("Background/VBoxContainer/Password")
onready var login_button = get_node("Background/VBoxContainer/LoginButton")
func _ready():
	print("login screen started")
func _on_LoginButton_pressed():
	
	if username_input.text == "" or userpassword_input.text =="":
		#popup and stop
		print("Please provide valid userID and password")
	else:
		login_button.disabled = true
		var username = username_input.get_text()
		var password = userpassword_input.get_text()
		print("attempting to login")
		#Server.ConnectToServer()
		Gateway.ConnectToServer(username ,password)




