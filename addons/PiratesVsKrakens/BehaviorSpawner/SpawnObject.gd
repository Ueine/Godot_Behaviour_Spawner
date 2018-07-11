extends Node2D

enum IdType{UNKNOWN,HOMING}

export(IdType) var type_id = UNKNOWN
export(int) var speed = 0
export(int) var damage = 0