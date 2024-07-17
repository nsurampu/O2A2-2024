extends Node2D


const main_scene_path = "res://scenes/main.tscn"
var main_scene = preload(main_scene_path)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	
	set_stylebox_color("normal", Color.DARK_SLATE_BLUE)
	#$Start.add_color_override("font_color", Color.BLACK)

	
func set_stylebox_color(style_box_type: String, color: Color):
	
	var stylebox_theme: StyleBoxFlat = $Start.get_theme_stylebox(style_box_type)
	stylebox_theme.bg_color = color
	stylebox_theme.border_color = color
	
	$Start.add_theme_stylebox_override(style_box_type, stylebox_theme)


func _on_start_pressed():
	#pass # Replace with function body.
	get_tree().root.add_child(main_scene.instantiate())
