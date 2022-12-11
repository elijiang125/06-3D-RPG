extends Node

var timer = 0
var score = 0


func _input(_event):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)
	
func update_time():
	var minutes = floor(timer / 60)
	var seconds = timer % 60
	var t = "Time: %02d" % minutes
	t += ":%02d" % seconds
	get_node("/root/Game/UI/Time").text = t
