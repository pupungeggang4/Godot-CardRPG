extends Node2D

@export var grid_position = Vector2i(10, 10)

func _process(delta: float) -> void:
    position = grid_position * 40.0
