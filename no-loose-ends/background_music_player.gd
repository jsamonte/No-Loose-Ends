extends Node

const BGM_BASE = preload("uid://xw7oaqrgebl7")
const BGM_INTRO = preload("uid://cbqgorpe71vog")
const BGM_FINALE = preload("uid://gtjccb0x2hca")

#Hashmap, add the preloads, have the name as key
var bgmList = {"BaseBGM": BGM_BASE,"IntroBGM":BGM_INTRO,
"FinaleBGM":BGM_FINALE
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$BackgroundMusic = BGM_INTRO
	$BackgroundMusic.play()
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
