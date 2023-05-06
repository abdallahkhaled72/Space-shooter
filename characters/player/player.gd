extends Area2D

var speed = 300 

var _input_vector = Vector2.ZERO

func _physics_process(delta):
	_input_vector.y = Input.get_action_strenght("move_down") - Input.get_action_strength("move_up")
	_input_vector.x = Input.get_action_strenght("move_right") - Input.get_action_strength("move_left")
	global_position +=_input_vector * speed * delta
