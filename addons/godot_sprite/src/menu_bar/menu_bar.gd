@tool extends HBoxContainer

signal option_selected


func _ready():
	connect_menu_option_signals()


func connect_menu_option_signals():
	for menu_button in get_children():
		menu_button.option_selected.connect(_on_menu_option_selected)


func _on_menu_option_selected(context):
	option_selected.emit(context)
