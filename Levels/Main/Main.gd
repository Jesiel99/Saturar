extends Spatial

onready var timer = $Timer
var audio_file = "res://Assets/Audio/10 comerciais que marcaram os Anos 2000.wav"
onready var streamPlayer = $AudioStreamPlayer2D
func _process(delta):
	print(array.size())

var array = []

func _on_Timer_timeout():
	if File.new().file_exists(audio_file):
#		var sfx = load(audio_file) 
#		sfx.set_loop(true)
		var speech_player = streamPlayer.duplicate()
#		speech_player.stream = sfx
		speech_player.volume_db -= array.size() * 5
		speech_player.play()
		array.append(speech_player)
		add_child(speech_player)
