extends Node

var personSuspected = "" #Lab assistant, Security guard, Homeless person, Janitor
var assasinationTool = "" #Lab equipment, Gun shot, Stab wounds, Poison
var nextDialogueName = "start"
var wins = 0

var gotAwayWithIt = false
var justiceServed = false

var currentMusicPlaying = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_intro_scene():
	get_tree().change_scene_to_file("res://Intro.tscn")
	
func load_outro_scene():
	get_tree().change_scene_to_file("res://Outro.tscn")

func change_to_lab_assistant():
	get_tree().change_scene_to_file("res://labAssistant.tscn")

func change_to_security_guard():
	get_tree().change_scene_to_file("res://securityGuard.tscn")
	
func change_to_homeless_person():
	get_tree().change_scene_to_file("res://homelessPerson.tscn")
	
func change_to_janitor():
	get_tree().change_scene_to_file("res://janitor.tscn")
