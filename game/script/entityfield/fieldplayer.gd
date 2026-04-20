extends Node2D

@export var speed: float = 320.0

func _ready() -> void:
    position = Vector2(640, 360)
    
func _process(delta: float) -> void:
    if GVar.menu == false:
        if GVar.state == '':
            if Input.is_action_pressed('key_left'):
                position.x -= speed * delta
            if Input.is_action_pressed('key_right'):
                position.x += speed * delta
            if Input.is_action_pressed('key_up'):
                position.y -= speed * delta
            if Input.is_action_pressed('key_down'):
                position.y += speed * delta
