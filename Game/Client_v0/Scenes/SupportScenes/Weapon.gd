extends MeshInstance

export var damage = 10
const MAGAZINE = 6
var bullets = MAGAZINE
var get_damage = false

onready var cooldown_timer = $CooldownTimer

func _ready():
	pass

func _process(delta):
	if Server.CONNECTED && !get_damage:
		#fetch gun damage from server
		Server.FetchSkillDamage("Pistol" , get_instance_id())
		get_damage = true
		
	
func SetDamage(s_damage):
	damage=s_damage
	
func shoot():
	if bullets> 0:
		$AnimationPlayer.play("fire")
		bullets-=1
		return true
	else:
		return false
		
func Reload():
	print("reloading...")
	$ReloadTimer.start()


