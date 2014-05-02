set reponse = math.random(9)
do  {
	text.clear()
	set nb = text.inputNumber("entre 0-9")
	
	if (nb < reponse) {
	print ("trop petit")
	util.wait(5000)	
  }
	elseif (nb > reponse) {
	print ("trop grand");
	util.wait(1000)	
	}
} until (nb == reponse)

print("bien joué")
	
