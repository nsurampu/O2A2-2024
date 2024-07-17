extends Node2D


# Called when the node enters the scene tree for the first time.
const landing_scene_path = "res://scenes/landing.tscn"
var landing_scene = preload(landing_scene_path)

func _ready():
	pass # Replace with function body.


func _on_timer_timeout():
	#pass # Replace with function body.
	get_tree().root.add_child(landing_scene.instantiate())
