@tool extends TabContainer


const SpritePanel = preload("res://addons/godot_sprite/src/sprite_panel/sprite_panel.tscn")
var sprites_created = 0


func create_new_sprite(context: Dictionary):
	var sprite_panel_instance = SpritePanel.instantiate()
	add_child(sprite_panel_instance)
	sprites_created += 1
	sprite_panel_instance.name = "Sprite_" + str(sprites_created)
	sprite_panel_instance.set_context(context)
