extends KinematicBody


#stats
var curHP :int = 10
var maxHP: int = 100
var ammos:int = 50
var score:int = 0

#physics
var MOVESPEED:float = 5.0
var JUMPFORCE:float = 5.0
var GRAVITY:float = 12.0

#cam look
const MINLOOKANGLE: float = -90.0
const MAXLOOKANGEL: float = 90.0
var lookSensitivity: float = 10.0

#vectors
var vel:Vector3 = Vector3()
var mouseDelta:Vector2 = Vector2()

#components
onready var camera:Camera = get_node("Camera")

#player state
var player_state

func _ready():
	#set physics process off
	set_physics_process(false)
	#lock and hide cursor
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _physics_process(delta):
	#called 60 ps
	#reset x and z velocity
	vel.x = 0
	vel.z = 0
	
	#movement vector
	var input_movement_vec = Vector2()
	
	#movement input
	if Input.is_action_pressed("movement_forward"):
		input_movement_vec.y -= 1
	if Input.is_action_pressed("movement_backword"):
		input_movement_vec.y += 1
	if Input.is_action_pressed("movement_left"):
		input_movement_vec.x -= 1
	if Input.is_action_pressed("movement_right"):
		input_movement_vec.x += 1
		
	#normalized input movements
	input_movement_vec = input_movement_vec.normalized()
	
	#get forward and right directions
	var forward = global_transform.basis.z
	var right = global_transform.basis.x
	
	var relDir = ( forward * input_movement_vec.y + right * input_movement_vec.x)
	
	#set velocity vector
	vel.x = relDir.x * MOVESPEED
	vel.z = relDir.z * MOVESPEED
	
	# apply gravity
	vel.y -= GRAVITY * delta
	
	#move palyer
	vel = move_and_slide(vel ,Vector3.UP)
	
	#jumping
	if Input.is_action_just_pressed("jump") and is_on_floor():
		vel.y = JUMPFORCE
	
	#free cursor
	if Input.is_action_just_pressed("ui_cancel"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			
	DefinePlayerState()

func _process(delta):
	# rotate camera along x axis
	camera.rotation_degrees.x -= mouseDelta.y * lookSensitivity * delta
	
	#clamp camera rotation along x
	camera.rotation_degrees.x = clamp(camera.rotation_degrees.x ,MINLOOKANGLE ,MAXLOOKANGEL)
	
	#rotate the player y axis 
	rotation_degrees.y -= mouseDelta.x * lookSensitivity * delta
	mouseDelta = Vector2()
	
func _input(event):
	#call for every input
	if event is InputEventMouseMotion and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		mouseDelta = event.relative
		
func DefinePlayerState():
	#make player state
	player_state = {"T":Server.client_clock ,"P":get_global_transform()}
	Server.SendPlayerState(player_state)
