extends Node2D

var menu = false

func _on_button_menu_button_up() -> void:
    if menu == true:
        menu = false
        get_node('MenuTitle').hide()
    else:
        menu = true
        get_node('MenuTitle').show()
