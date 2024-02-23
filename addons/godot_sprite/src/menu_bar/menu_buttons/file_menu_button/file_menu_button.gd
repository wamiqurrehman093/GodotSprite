@tool extends MenuButton

var menu: PopupMenu = null
var menu_name = "file_menu"

signal option_selected


func _ready():
	menu = get_popup()
	menu.index_pressed.connect(_on_menu_option_selected)


func _on_menu_option_selected(index: int):
	var option_name = menu.get_item_text(index)
	var context = {
		"menu_name": menu_name,
		"option_name": option_name.to_lower()
	}
	option_selected.emit(context)
