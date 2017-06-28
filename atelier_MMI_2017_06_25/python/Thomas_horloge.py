import tkinter
from time import strftime

ck = tkinter.Label()
ck['font'] = 'OCR\ A\ Extended 100'
ck['text'] = strftime('%H:%M:%S')
ck.pack()


def tictac() :
    ck['text'] = strftime('%H:%M:%S')
    ck.after(1000, tictac)

if __name__ == '__main__':
    tictac()
