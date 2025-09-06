extends AnimatedSprite2D

var flip_on_frame := 1
var original_flip_h := false

func _ready():
	play("default")  # Replace with your actual animation name

func _on_frame_changed():
	if frame == flip_on_frame:
		flip_h = true  # Flip horizontally for the specific frame
	else:
		flip_h = original_flip_h  # Reset to the original state
