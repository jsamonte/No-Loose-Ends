extends Control

#Load dialogue file
const Dialogue_File = preload("res://DialogueFiles/startingDialogue.dialogue")

#Define DialogueLabel and ChoicesContainer as variables when scene finbishes loading
@onready var dialogue_label = $Panel/MarginContainer/VBoxContainer/DialogueLabel
@onready var choices_container = $Panel/MarginContainer/VBoxContainer/ChoicesContainer

var current_dialogue_line

func _ready():
	start_dialogue(globalVariables.nextDialogueName)
	
func start_dialogue(dialogueFunc: String):
	#Retrieve next line in dialogue file (DialogueLine object, contains text and responses array)
	current_dialogue_line = await DialogueManager.get_next_dialogue_line(Dialogue_File, dialogueFunc)
	show_dialogue()

#Display dialogue and choices
func show_dialogue():
	#If reached end of dialogue file
	if current_dialogue_line == null:
		dialogue_label.text = "The End"
		clear_choices()
		return
		
	#Set current dialogue line
	dialogue_label.text = current_dialogue_line.text
	
	#Clear any previous choices
	clear_choices()
	
	#Check if current dialogue line has choices
	if current_dialogue_line.responses.size() > 0:
		#Set current dialogue choices (array)
		for response in current_dialogue_line.responses:
			#Creates button to hold choice
			var button = Button.new()
			button.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
			button.text = response.text
			button.add_theme_font_size_override("font_size", 24)
			#If button is pressed, run the on_choice_pressed() function
			button.pressed.connect(func(): on_choice_pressed(response))
			choices_container.add_child(button)
	else:
		#Create default next button to continue dialogue
		var next_button = Button.new()
		next_button.text = "Next >"
		next_button.add_theme_font_size_override("font_size", 24)
		next_button.pressed.connect(func(): on_next_pressed())
		choices_container.add_child(next_button)
		
#Clear out choices in ChoicesContainer
func clear_choices():
	for child in choices_container.get_children():
		child.queue_free()
		

#Advance dialogue based on choice selected
func on_choice_pressed(response):
	current_dialogue_line =  await DialogueManager.get_next_dialogue_line(Dialogue_File, response.next_id)
	show_dialogue()

#Advance dialogue to next line
func on_next_pressed():
	current_dialogue_line = await DialogueManager.get_next_dialogue_line(Dialogue_File, current_dialogue_line.next_id)
	show_dialogue()
