extends Control

func _on_button_resume_button_up() -> void:
    if GVar.menu == true:
        GVar.menu = false
        hide()

func _on_button_surrender_button_up() -> void:
    if GVar.menu == true:
        GVar.menu = false
        get_tree().change_scene_to_file('res://scene/field.tscn')
        hide()

func _on_button_exit_button_up() -> void:
    if GVar.menu == true:
        GVar.menu = false
        get_tree().change_scene_to_file('res://scene/title.tscn')
        hide()

func _on_button_quit_button_up() -> void:
    if GVar.menu == true:
        get_tree().quit()
