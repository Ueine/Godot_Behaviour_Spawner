extends Node2D

#spawning tentacles
export(int) var firerate = 100
export(int) var speed = 5
export(int) var damage = 0
export(int) var angle_num = 1
export(PackedScene) var spawn_object
export(NodePath) onready var target_node_path setget set_target_node_path

var target_node

var can_shoot = true
var shoot_alarm = firerate

var spawner

func set_target_node_path(path):
	target_node_path = path
	target_node = get_node(path)
	
func _ready():
	spawner = get_parent()	
	spawner._add_behavior(self)
	
func _do_behavior(spawn_object,spawner):
	pass
	
func _post_behavior(spawn_object,spawner):
	pass
	
func _run(delta):
	if can_shoot == true:
		for i in range(angle_num):
			var t = spawn_object.instance()
			t.global_position = Vector2(spawner.position.x, spawner.position.y)
			
			_do_behavior(spawn_object,spawner)
				
			print("running ...")
			
			t.speed = speed
			t.damage = damage
			
			_post_behavior(spawn_object,spawner)	
			if target_node == null:
				target_node = get_node(target_node_path)
			target_node.add_child(t)
			can_shoot = false