@tool extends MenuButton

var menu: PopupMenu = null

func _ready():
	menu = get_popup()
	menu.index_pressed.connect(_on_menu_option_selected)

func _on_menu_option_selected(index: int):
	var option_name = menu.get_item_text(index)
	print(option_name + " pressed.")
