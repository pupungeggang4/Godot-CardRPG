extends Node2D

@export var grid_position: Vector2i = Vector2i(0, 0)

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    position = grid_position * 40.0
