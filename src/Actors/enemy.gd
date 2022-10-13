extends Actor

onready var enemmy=get_node("Illustration-of-an-elongated-blue-fish-vector-PNG")

onready var myscale=enemmy.scale.x
func _process(delta:float) -> void: 
	var diraction = enemy_dirictions () 
	velosity = diraction*speed*(delta*10)
	
	
	if diraction.x<0 :
		enemmy.scale.x=-myscale
	elif diraction.x>0:
		enemmy.scale.x=myscale






