import turtle
a = turtle.Pen()

def forme(cote,nb) :
    
    for i in range(nb) :
        a.forward(cote)
        a.right(360/nb)

if __name__ == '__main__':
    forme(100,4)
