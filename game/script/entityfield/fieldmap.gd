extends Node2D

@export var node_saves: Node
@export var node_enemies: Node
@export var node_npcs: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass

func load_field_data() -> void:
    var data: FieldData = GVar.field_data