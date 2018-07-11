extends Node2D

var behaviors = []

func _add_behavior(b):
	behaviors.append(b)
	
func _end_spawn():
	pass
	
func _process(delta):
	for b in behaviors:
		b._run(delta)
	_end_spawn()
	