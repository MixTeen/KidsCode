set i =1


loop (5) {
	i = i + 1
	algo.circle(i * 100)
}

loop(4){
algo.go(100)
algo.turnLeft(90)}


loop(3){
algo.turnRight(360/3)
algo.go (100)
}


algo.go(50)
algo.turnRight(90)
algo.go(200)
algo.turnRight(90)
algo.go(50)
algo.turnRight(90)
algo.go(200)

set poly=function (size,n) {
loop (n) {
 algo.go (size);
 algo.turnLeft (360/n);
 }
};

ui.showAlgo();

loop(20){
 poly(40,50);
 algo.turnLeft(360/20);
}



algo.goTo(400,200)


set carre =function (longueur){
loop(4){
 algo.go(longueur)
 algo.turnLeft(90)
 }
};

loop(100){
algo.goTo(math.random(500), math.random(500))
carre(math.random (100))}




