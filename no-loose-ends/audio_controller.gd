extends Node

#const BGM_BUS_NAME = "BGM"
##const SFX_BUS_NAME = "SFX"  

#@onready var bgm_bus_index = AudioServer.get_bus_index(BGM_BUS_NAME)
#@onready var sfx_bus_index = AudioServer.get_bus_index(SFX_BUS_NAME)

@onready var bgmPlayer: AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#if (bgm_bus_index == -1):
		#push_error("Audio Bus '%s' not found." % BGM_BUS_NAME)
	#if sfx_bus_index == -1:
		#push_error("Audio Bus '%s' not found." % SFX_BUS_NAME)

#func playBGM(stream: AudioStream, fade_in_duration: float = 1.0):
	#if not bgmPlayer:
		#bgmPlayer = AudioStreamPlayer.new()
		#bgmPlayer.bus = BGM_BUS_NAME
		#add_child(bgmPlayer)
	#bgmPlayer.stream = stream
	#bgmPlayer.volume_db = -80.0
	#bgmPlayer.play()
	#
	#var tween = create_tween()
	#tween.tween_property(bgmPlayer, "volume_db",0.0,fade_in_duration)
	#
#
#func play_sfx(stream: AudioStream, position: Vector2 = Vector2.ZERO):
	#var player: Node
	#if position == Vector2.ZERO:
		#player = AudioStreamPlayer.new()
	#else:
		#player = AudioStreamPlayer2D.new()
		#player.global_position = position
		#
	#player.stream = stream
	#player.bus = SFX_BUS_NAME
	#add_child(player)
	#player.play()
	#player.finished.connect(func(): player.queue_free())
#
#func set_bgm_bus_volume(linear_volume: float):
	#if(bgm_bus_index == -1):
		#return
	#AudioServer.set_bus_volume_db(bgm_bus_index, linear_to_db(clampf(linear_volume,0.0, 1.0)))

#func set_sfx_volume(linear_volume: float):
	#if sfx_bus_index == -1:
		#return
	#AudioServer.set_bus_volume_db(sfx_bus_index, linear_to_db(clampf(linear_volume,0.0,1.0)))

func playTrack1():
	bgmPlayer.stream = load("res://Music/BackgroundMusic/BaseStateAudio.wav")
	bgmPlayer.play()
	#playBGM(musicFile, 1)
	
	
func playTrack2():
	var musicFile = load("res://Music/BackgroundMusic/The Crime Scene.wav")
	#musicFile.set_loop_begin(0)
	#musicFile.set_loop_end(318000)
	#playBGM(musicFile, 1.5)
	bgmPlayer.play()
	
func playTrack3():
	var musicFile = load("res://Music/BackgroundMusic/YouWinJingle.wav")
	#playBGM(musicFile, 1)
	bgmPlayer.play()
