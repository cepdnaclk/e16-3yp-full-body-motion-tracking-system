#has server side weapon damage functions

extends Node

func FetchSkillDamage(skill_name):
	var damage = ServerData.skill_data[skill_name].Damage
	return damage
