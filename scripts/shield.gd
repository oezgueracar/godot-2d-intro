extends Area2D

@onready var label = $Label

func _on_body_entered(body):
	label.visible = true
	print(label.visible)

func _on_body_exited(body):
	label.visible = false
	print(label.visible)
