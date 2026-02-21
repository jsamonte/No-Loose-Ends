extends Node

var personSuspected = "" #Lab assistant, Security guard, Homeless person, Janitor
var assasinationTool = "" #Lab equipment, Gun shot, Stab wounds, Poison
var nextDialogueName = "start"
var wins = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func change_to_lab_assistant():
	get_tree().change_scene_to_file("res://basic.tscn")

func change_to_security_guard():
	get_tree().change_scene_to_file("res://basic2.tscn")
	
func change_to_homeless_person():
	get_tree().change_scene_to_file("res://basic2.tscn")
	
func change_to_janitor():
	get_tree().change_scene_to_file("res://basic2.tscn")
