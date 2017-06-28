# suite au travail de Thomas, version suggérée poar Titi ;)
import tkinter as tk
from time import strftime
import datetime as d

running = False
temp_start = d.datetime.now()
chrono = temp_start - temp_start
chrono_stop = chrono

top = tk.Tk()

panneau_chrono = tk.PanedWindow(top, orient=tk.HORIZONTAL)
ck = tk.Label(panneau_chrono)
panneau_chrono.add(ck)
ck['font'] = 'OCR\ A\ Extended 100'
ck['text'] = '00:00'
panneau_chrono.pack()

def minute_seconde(a) :
    minutes = a // 60 
    secondes = a - (minutes*60)
    minutes2 = str(minutes)
    secondes2 = str(secondes)
    if minutes < 10 :
        minutes2 = "0" + minutes2
    if secondes < 10 :
        secondes2 = "0" + secondes2
    return minutes2, secondes2
    
def action_start() :
    global chrono
    global running
    global temp_start 
    temp_start = d.datetime.now()
    running = True
    affichage()
    
def action_stop() :
    global chrono_stop
    global running
    running = False
    chrono_stop = chrono
    
def action_reset() :
    global temp_start
    global chrono
    global running
    global chrono_stop
    temp_start = d.datetime.now()
    chrono = temp_start - temp_start
    chrono_stop = chrono
    running = False
    ck['text'] = '00:00'
    
def affichage() :
    global chrono
    if running :
        chrono = d.datetime.now() - temp_start + chrono_stop
        chrono2 = minute_seconde(chrono.seconds)
        ck['text'] = chrono2[0] + ':' + chrono2[1]
    ck.after(1000,affichage)

panneau = tk.PanedWindow(top, orient=tk.HORIZONTAL) 
panneau.add(tk.Button(panneau,text='Start',command=action_start))
panneau.add(tk.Button(panneau,text='Stop',command=action_stop))
panneau.add(tk.Button(panneau,text='Reset',command=action_reset))
panneau.pack()

top.mainloop()
