extends Node

var score = 0
@onready var score_label = %ScoreLabel
var score_text = "Score: "

func add_points():
	score += 1
	print(score)
	score_label.text = score_text + str(score) 
