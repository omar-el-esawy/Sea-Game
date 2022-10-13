extends Node2D

onready var music = get_node("music")

func _ready():
	if $music.playing == false:
		$music.playing()
