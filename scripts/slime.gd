extends Node2D

# Basically used to update position x
const SPEED = 20
 
var direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# CHeck before moving if we would collide with something on left or right
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	# If direciton is -1, it will move left
	# Multiplication with delta will make movement independent from PCs framerate somehow
	position.x += direction * SPEED * delta
