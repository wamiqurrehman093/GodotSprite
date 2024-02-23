@tool extends ConfirmationDialog


signal create_new_sprite


func _ready():
	confirmed.connect(_on_confirmed)


func _on_confirmed():
	var context = {
		"size": get_sprite_size(),
		"background": get_sprite_background()
	}
	create_new_sprite.emit(context)


func get_sprite_size():
	return Vector2(
		$Panel/Content/Size/Width/SpinBox.value,
		$Panel/Content/Size/Height/SpinBox.value
	)


func get_sprite_background():
	for option: Button in $Panel/Content/Background/Options.get_children():
		if option.button_pressed:
			return str(option.name)
