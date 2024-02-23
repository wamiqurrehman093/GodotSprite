@tool extends MarginContainer


func _ready():
	$MainWindow.menu_option_selected.connect(_on_menu_option_selected)


func _on_menu_option_selected(context: Dictionary):
	call("_on_%s_option_%s_selected" % context.values())


func _on_file_menu_option_new_selected():
	$NewSpriteWindow.popup()
