extends KinematicBody2D
class_name Actor 

export var speed:= Vector2(300,300)
var velosity := Vector2.ZERO

onready var enemy=get_parent().get_node("enemy")
onready var fish=get_parent().get_node("fish")


var x=1
var y=-1


		
		
func _physics_process(delta:float) -> void: 
	move_and_slide(velosity)
	
	var dirction = fish_diriction()

	if fish.position.x >= enemy.position.x-1 and fish.position.x <= enemy.position.x + 1:
		x=0
	elif fish.position.x> enemy.position.x+1:
		 x=1
	else:
		x=-1
		
	if fish.position.y> enemy.position.y:
		 y=1
	else :
		y=-1 
	
	if abs(enemy.position.x-fish.position.x)<=250 and abs(enemy.position.y-fish.position.y) <=100:
		#queue_free()
		get_tree().change_scene("res://src/again/again.tscn")
	 
	#print ('enemy pos= '+str(enemy.position.x))
	#print ('fish pos= '+str(fish.position.x))
	



func enemy_dirictions ()->Vector2:
	return Vector2(x,y)
	
	

func fish_diriction ()->Vector2:
	return Vector2(
		Input.get_action_strength("move_right") -Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") -Input.get_action_strength("move_up")
	)
