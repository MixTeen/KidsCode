set polygon = function (x, y, nbCote, size) {
algo.goTo (x, y)
loop (nbCote) {
		algo.go (size);
		algo.turnRight (360 / nbCote)
	}	
}
 
set alea = function (x, y) {
loop (1) {
		for (set i = 3; i <= 10; i = i + 1){
			algo.setColor (math.random (15))
			polygon (x, y, i, 50)
		}
	}
}

algo.onClick (alea)