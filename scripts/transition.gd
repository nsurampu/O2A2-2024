extends CanvasLayer


signal transitioned
signal completed_transition

const credit_scene_path = "res://scenes/credits.tscn"
var credit_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	credit_scene = preload(credit_scene_path)
	print("Starting transition...")
	transition()


func transition():
	$AnimationPlayer.play("fade_to_black")
	

func _on_animation_player_animation_finished(anim_name):
	#pass # Replace with function body.
	if anim_name == "fade_to_black":
		emit_signal("transitioned")
		$AnimationPlayer.play("fade_to_normal")
	if anim_name == "fade_to_normal":
		get_tree().root.add_child(credit_scene.instantiate())
