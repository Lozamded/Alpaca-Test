extends KinematicBody2D

# Declare member variables here. Examples:
var move_x = 0
var move_y = 0
var movimientonave = 150;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	
	move_x = ( (int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")) ) * 225 ) + movimientonave
	move_y = ( int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")) ) * 225
	
	var colliders = move_and_slide(Vector2(move_x,move_y), Vector2(0,-1))
	