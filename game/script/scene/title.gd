extends Node2D

func _ready() -> void:
    GVar.state = ''
    Util.load_data()
    $Quitwindow.hide()
    
func _process(delta: float) -> void:
    pass

func _on_button_start_button_up() -> void:
    if GVar.state == '':
        get_tree().change_scene_to_file('res://scene/field.tscn')
    
func _on_button_collection_button_up() -> void:
    if GVar.state == '':
        get_tree().change_scene_to_file('res://scene/field.tscn')

func _on_button_erase_button_up() -> void:
    if GVar.state == '':
        Util.erase_data()

func _on_button_quit_button_up() -> void:
    if GVar.state == '':
        GVar.state = 'quit'
        $Quitwindow.show()
