@tool extends MarginContainer


func _ready():
	$MainWindow.menu_option_selected.connect(_on_menu_option_selected)
	$NewSpriteWindow.create_new_sprite.connect(_on_create_new_sprite)


func _on_menu_option_selected(context: Dictionary):
	call("_on_%s_option_%s_selected" % context.values())


func _on_file_menu_option_new_selected():
	$NewSpriteWindow.popup()


func _on_create_new_sprite(context: Dictionary):
	$MainWindow.create_new_sprite(context)
