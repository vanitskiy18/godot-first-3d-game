extends Spatial


func _process(delta):
	$ColorRect.hide()
	$Label.text='Coins: ' + str(G.coins) + '\nLifes: ' + str(G.hp)
	if $Player.translation.y<=-10 or G.start:
		G.hp-=1
		$Player.translation=Vector3(0,0,0)
		G.start=false
		
	if G.coins==7:
		$ColorRect.show()
		$ColorRect/Label.text='You Won!!!'
	if G.hp==0:
		$ColorRect.show()
		$ColorRect/Label.text='Game Over!'
