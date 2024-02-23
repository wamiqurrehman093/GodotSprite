@tool extends VBoxContainer


signal menu_option_selected


func _ready():
	$MenuBar.option_selected.connect(_on_menu_option_selected)


func _on_menu_option_selected(context):
	menu_option_selected.emit(context)
