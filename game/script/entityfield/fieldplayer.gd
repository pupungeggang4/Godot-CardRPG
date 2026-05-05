extends Node2D

@export var speed: float = 320.0
@export var grid_position: Vector2i = Vector2i(0, 0)
@export var moving: bool = false
@export var moved_distance: float = 0.0
@export var moving_direction: Vector2 = Vector2(0, 0)
@export var arrows: Array = ['key_left', 'key_right', 'key_up', 'key_down']

func _ready() -> void:
    position = Vector2(0, 0)
    
func _process(delta: float) -> void:
    if GVar.menu == false:
        if GVar.state == '':
            if moving == false:
                if arrows.any(Input.is_action_pressed):
                    moving = true
                    moved_distance = 0.0
                if Input.is_action_pressed('key_left'):
                    grid_position.x -= 1
                    moving_direction = Vector2(-1, 0)
                elif Input.is_action_pressed('key_right'):
                    grid_position.x += 1
                    moving_direction = Vector2(1, 0)
                elif Input.is_action_pressed('key_up'):
                    grid_position.y -= 1
                    moving_direction = Vector2(0, -1)
                elif Input.is_action_pressed('key_down'):
                    grid_position.y += 1
                    moving_direction = Vector2(0, 1)
            else:
                if moved_distance + speed * delta >= 40.0:
                    position.x = grid_position.x * 40
                    position.y = grid_position.y * 40
                    moving = false
                else:
                    position += moving_direction * speed * delta
                    moved_distance += speed * delta
