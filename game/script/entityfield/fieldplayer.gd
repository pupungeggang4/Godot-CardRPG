extends CharacterBody2D

@export var speed: float = 320.0

func _ready() -> void:
    position = Vector2(640, 360)
    
func _process(delta: float) -> void:
    if GVar.menu == false:
        if GVar.state == '':
            var direction = Input.get_vector('key_left', 'key_right', 'key_up', 'key_down')
            if direction:
                velocity = direction * speed
            else:
                velocity = Vector2.ZERO
            move_and_slide()
