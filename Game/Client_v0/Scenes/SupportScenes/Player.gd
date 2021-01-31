extends KinematicBody

onready var head := $Head
onready var hand := $Head/Hand
onready var handloc := $Head/HandLoc
onready var aimcast := $Head/Camera/AimCast
onready var weapon := $Head/Hand/Weapon/AnimationPlayer
onready var b_cal := preload("res://Scenes/TestScenes/BulletDecals.tscn")

const SWAY = 30

export var SPEED = 7
export var ACCELERATION = 20
export var GRAVITY = 9.8
export var JUMP = 5

var MOUSE_SENSIVITY = 0.05

var direction := Vector3()
var velocity := Vector3()
var fall := Vector3()

#player state
var player_state

func _ready():
	#set physics process off
	set_physics_process(false)
	#lock and hide cursor
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	hand.set_as_toplevel(true)
	 

func _input(event):
	
	if (event is InputEventMouseMotion ) and Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		rotate_y(deg2rad(-event.relative.x*MOUSE_SENSIVITY))
		head.rotate_x(deg2rad(-event.relative.y*MOUSE_SENSIVITY))
		head.rotation.x = clamp(head.rotation.x ,deg2rad(-90),deg2rad(90))
		
func _process(delta):
	
	hand.global_transform.origin = handloc.global_transform.origin
	hand.rotation.y = lerp_angle(hand.rotation.y ,rotation.y ,SWAY *delta)
	hand.rotation.x = lerp_angle(hand.rotation.x ,head.rotation.x ,SWAY *delta)
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	
		
	fire()
	direction = Vector3()
		
	if not is_on_floor():
		fall.y -= GRAVITY * delta
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		fall.y = JUMP
	
	if Input.is_action_pressed("movement_forward"):
		direction -= transform.basis.z
	elif  Input.is_action_pressed("movement_backword"):
		direction += transform.basis.z
	if Input.is_action_pressed("movement_left"):
		direction -= transform.basis.x
	elif Input.is_action_pressed("movement_right"):
		direction += transform.basis.x
	
	direction = direction.normalized()
	
	velocity = velocity.linear_interpolate(direction * SPEED ,ACCELERATION *delta)
	velocity = move_and_slide(velocity ,Vector3.UP)
	move_and_slide(fall ,Vector3.UP)
	
	DefinePlayerState()
	
	
func fire():
	if Input.is_action_pressed("fire"):
		weapon.play("fire")
	
		if aimcast.is_colliding():
			var target = aimcast.get_collider()
			if target.is_in_group("Walls"):
				var b = b_cal.instance()
				target.add_child(b)
				b.global_transform.origin = aimcast.get_collision_point()
				b.look_at(aimcast.get_collision_point() + aimcast.get_collision_normal(), Vector3.UP)
	else:
		weapon.stop()
		
		
func DefinePlayerState():
	#make player state
	player_state = {"T":Server.client_clock ,"P":get_global_transform()}
	Server.SendPlayerState(player_state)
	

