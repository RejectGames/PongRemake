class_name InputHandler
extends Node

@export var input_actions : InputActionsResource

func get_input() -> float:
	var input_vector = Input.get_axis(input_actions.up, input_actions.down)
	return input_vector
