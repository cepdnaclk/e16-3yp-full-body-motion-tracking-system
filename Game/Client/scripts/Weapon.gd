extends Node
class_name Weapon

onready var raycast = $"../Camera/RayCast"
onready var ammoLabel = $"../UI/Label"
#basic configure
var fireRate:float = 0.5
var clipSize:int = 5
var reloadRate:float = 1.0

var currentAmmo = 0
var canFire = true
var reloading = false

func _ready():
	currentAmmo = clipSize
	

func _process(delta):
	#display ammo in ui
	ammoLabel.set_text(" %d / %d "%[currentAmmo ,clipSize])
	
	if Input.is_action_just_pressed("primary_weapon_fire") and canFire:
		if currentAmmo > 0 and not reloading:
			#fire the weapon
			canFire = false
			#reduce ammo
			currentAmmo -= 1
			check_collision()
			#wait until next bullet load
			yield(get_tree().create_timer(fireRate ), "timeout")
			canFire = true
		elif not reloading:
			#reload weapon
			reloading = true
			yield(get_tree().create_timer(reloadRate ), "timeout")
			#update current ammos
			currentAmmo = clipSize
			reloading = false

func check_collision():
	if raycast.is_colliding():
		var collider = raycast.get_collider()
		
		if collider.is_in_group("boxes"):
			collider.queue_free()
		
