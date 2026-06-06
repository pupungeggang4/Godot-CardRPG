class_name EnemyData extends Resource

var pos: Vector2i = Vector2i(0, 0)
var type: String = 'normal'

func _init(a: int, b: int, type: String) -> void:
    pos = Vector2i(a, b)
    self.type = type
