@tool extends ColorPicker


const MAX_PRESETS = 8


func _ready():
	preset_added.connect(_on_preset_added)


func _on_preset_added(preset_color: Color):
	if get_presets().size() > MAX_PRESETS:
		erase_preset(preset_color)

