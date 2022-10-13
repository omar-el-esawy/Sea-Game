extends Control



func _on_login_button_up():
	get_tree().change_scene("res://src/templete/sea_temple.tscn")
	
	
	
	
onready var play = get_node("play")




func _on_Button_button_up():
	get_tree().quit()
