class_name Paddle
extends CharacterBody2D

@export var data : PaddleDataResource
@export var input_handler : InputHandler
@export var initial_speed : int = 250

var screen_height : int
var current_speed : int
var can_move : bool = true

func _ready():
	current_speed = initial_speed
	screen_height = get_viewport().size.y

func _physics_process(delta: float) -> void:
	
	
	if can_move:
		_movement(delta)
	
func _movement(_delta : float) -> void:
	var direction = input_handler.get_input()

	if direction == 0: 
		return
	
	prints(global_position.y)
	
	#var has_touched_top : bool = false
	#if global_position.y <= 0:
		#if not has_touched_top:
			#has_touched_top = true
			#return
#
				#
		#
		#
	#if global_position.y + (data.size.y) >= screen_height:
		#global_position.y = screen_height - data.size.y
		
	velocity.y = direction * current_speed
	global_position.y = clampf(global_position.y, 0, screen_height - data.size.y)
	
	move_and_slide()
