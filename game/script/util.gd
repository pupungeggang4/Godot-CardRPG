extends Node

func _ready() -> void:
    load_data()

func _process(delta: float) -> void:
    pass

func load_data() -> void:
    var file = FileAccess.open("user://save.txt", FileAccess.READ)
    if not file:
        file = FileAccess.open("user://save.txt", FileAccess.WRITE)
        file.store_string(str({"1": "1", "2": "2"}))
        file.close()
    file = FileAccess.open("user://save.txt", FileAccess.READ)
    GVar.save = JSON.parse_string(file.get_as_text())
    print(file.get_as_text())

func erase_data() -> void:
    var file = FileAccess.open("user://save.txt", FileAccess.WRITE)
    file.store_string(str({}))
    file.close()
    GVar.save = JSON.parse_string(file.get_as_text())
