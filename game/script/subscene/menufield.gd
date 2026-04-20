extends Control

@onready var scene_field = get_tree().current_scene

func _on_button_resume_button_up() -> void:
    GVar.menu = false
    hide()

func _on_button_exit_button_up() -> void:
    GVar.menu = false
    get_tree().change_scene_to_file('res://scene/title.tscn')
    hide()

func _on_button_quit_button_up() -> void:
    get_tree().quit()
