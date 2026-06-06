extends Node2D

const ENEMY = preload('res://scene/entityfield/enemy.tscn')
const SAVE = preload('res://scene/entityfield/save.tscn')

@export var node_saves: Node
@export var node_enemies: Node
@export var node_npcs: Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    load_field_data()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass

func load_field_data() -> void:
    var data: FieldData = GVar.field_data
    
    for save in data.save:
        var node_save = SAVE.instantiate()
        node_saves.add_child(node_save)
        node_save.grid_position = save.pos
    
    for enemy in data.enemy:
        var node_enemy = ENEMY.instantiate()
        node_enemies.add_child(node_enemy)
        node_enemy.grid_position = enemy.pos
