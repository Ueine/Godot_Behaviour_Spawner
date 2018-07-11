extends "res://addons/PiratesVsKrakens/BehaviorSpawner/BaseSpawnBehavior.gd"


export(NodePath) var target_path

var target

func _ready():
	target = get_node(target_path)	

func _do_behavior(spawn_object,spawner):
	#spawn_object.direction = (target.position - spawner.position).normalized()