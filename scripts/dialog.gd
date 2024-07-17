extends Node2D


#const transition_screen_path = "res://scenes/transition_screen.tscn"
#var transition_screen
const credit_scene_path = "res://scenes/credits.tscn"
var credit_scene = preload(credit_scene_path)

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	
	Dialogic.start('monologue')
	get_viewport().set_input_as_handled()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#pass
	if Dialogic.current_timeline == null:
		# do something to end
		get_tree().root.add_child(credit_scene.instantiate())
		set_process(false)
