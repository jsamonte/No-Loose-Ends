extends Node

const BGM_BASE = preload("uid://xw7oaqrgebl7")
const BGM_INTRO = preload("uid://d1c538ogkfe6w")
const BGM_FINALE = preload("uid://gtjccb0x2hca")




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$BackgroundMusic.stream = BGM_INTRO
	$BackgroundMusic.play()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
