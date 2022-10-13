extends Node2D



func _on_again_button_up():
	get_tree().change_scene("res://src/templete/sea_temple.tscn")
	


func _on_close_button_up():
	get_tree().quit()
