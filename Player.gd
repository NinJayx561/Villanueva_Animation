extends KinematicBody

export(NodePath) var animationtree 

onready var _anim_tree = get_node(animationtree)

func _physics_process(delta):
	if Input.is_action_pressed("Dodge"):
		_anim_tree["parameters/playback"].travel("Dodging Right-loop")
		
	elif Input.is_action_pressed("ui_left"):
		_anim_tree["parameters/playback"].travel("Cross Punch-loop")
		
	elif Input.is_action_pressed("ui_down"):
		_anim_tree["parameters/playback"].travel("Punch Combo-loop")
		
	elif Input.is_action_pressed("ui_right"):
		_anim_tree["parameters/playback"].travel("Magic Spell Casting-loop")
		
	elif Input.is_action_pressed("ui_up"):
		_anim_tree["parameters/playback"].travel("Standing Melee Attack 360 Low-loop")
		
	elif Input.is_action_pressed("run"):
		_anim_tree["parameters/playback"].travel("Getting Up (1)-loop")
		
	elif Input.is_action_pressed("Hit"):
		_anim_tree["parameters/playback"].travel("Hit To Body-loop")
		
	elif Input.is_action_pressed("Fall"):
		_anim_tree["parameters/playback"].travel("Fall A Loop (1)-loop")
		
	else:
		_anim_tree["parameters/playback"].travel("Standing Idle Looking Ver 2-loop")
	
