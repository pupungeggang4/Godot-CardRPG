extends Node2D

func _on_button_menu_button_up() -> void:
    if GVar.menu == true:
        GVar.menu = false
        get_node('UI/MenuTitle').hide()
    else:
        GVar.menu = true
        get_node('UI/MenuTitle').show()
