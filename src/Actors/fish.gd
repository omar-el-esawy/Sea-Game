extends Actor

onready var fishSprite=get_node("Illustration-of-an-elongated-blue-fish-vector-PNG")
onready var seaMusic = get_node("sea")
	
	
onready var myscale=fishSprite.scale.x
func _physics_process(delta:float) -> void: 
	var dirction := fish_diriction()
	
	if fish.position.x >= 1435 :
		if dirction.x == 1 :
			velosity.x = 0
		else :
			velosity=dirction*speed*(delta*3)
	elif fish.position.x <=200 :
		if dirction.x == -1 :
			velosity.x = 0
		else :
			velosity=dirction*speed*(delta*3)
	elif fish.position.y >= 900 :
		if dirction.y == 1 :
			velosity.y = 0
		else :
			velosity=dirction*speed*(delta*3)
	elif fish.position.y <=10 :
		if dirction.y == -1 :
			velosity.y = 0
		else :
			velosity=dirction*speed*(delta*3)
	else :
		velosity=dirction*speed*(delta*3)
	#fishSprite.translate(dirction*speed)
	if (fish.position.x >= 400 and fish.position.x <= 450 or
	 fish.position.x>= 1100 and fish.position.x <= 1150 or
	 fish.position.y>=200 and fish.position.y<=250 or 
	fish.position.y<=750 and fish.position.y>=730 ):
		seaMusic.play()
		print('see music')



	if dirction.x<0 :
		fishSprite.scale.x=-myscale
	elif dirction.x>0:
		fishSprite.scale.x=myscale
	print(myscale)
	



