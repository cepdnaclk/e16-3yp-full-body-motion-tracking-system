extends Node

onready var world = get_tree().get_root().get_node("World")

func _physics_process(delta):
	if world.has_node("map"):
		print("has map")
