//Initialisation du morpion

algo.hide();
set carreGauche = function(){
		loop (4){
			algo.go(75);
			algo.turnLeft(90);
		}
}

set carreDroite = function(){
		loop (4){
			algo.go(75);
			algo.turnRight(90);
		}
}

algo.go(75);
carreGauche();
algo.go(75);
carreGauche();
algo.go(75);
algo.turnRight(90);
carreDroite();
algo.turnRight(90);
algo.go(75);
carreGauche();
algo.go(75);
carreDroite();
carreGauche();
algo.go(75);
algo.turnLeft(90);
algo.go(75);
algo.go(75);
algo.turnLeft(90);
algo.go(75);
carreGauche();
algo.go(75);
carreGauche();

set rond = function(x, y){
	algo.goTo(x, y);
//	algo.clear(carre);
	loop(4){
		algo.circle(75);
	}
}
set croix = function(x, y){
		algo.goTo(x, y);
//	algo.clear(carre);
		algo.turnLeft(45);
		algo.go(75);
		algo.turnLeft(180);
		algo.go(37.5);
		algo.turnLeft(90);
		algo.go(37.5);
		algo.turnLeft(180);
		algo.go(75);
		algo.turnLeft(180);
		algo.go(37.5);
		algo.turnLeft(45);
}

set debug = 1;

set choix = function(x, y){
	if(debug == 1){
		rond(x, y);
		debug = 0;
	} else {
		croix(x, y);
		debug = 1;
	}
}

algo.onClick(choix)