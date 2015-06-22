#r "../NAudio.dll"

open NAudio.Midi

let midiOut = new MidiOut(0)

let commencer note = midiOut.Send(MidiMessage.StartNote(note, 127, 1).RawData)
let arreter note = midiOut.Send(MidiMessage.StopNote(note, 0, 1).RawData)
let attendre (duree:int) = System.Threading.Thread.Sleep(duree)

// Code produit en 3h par 4 jeunes de 11 à 14 ans, qui ne connaissait pas le solfège, génial !
let jouer note =
        let hauteur, duree = note         
        commencer hauteur
        attendre (int ((float duree)/1.5)) 
        arreter hauteur

let DO octave duree = (12*octave, duree)
let DOd octave duree = (12*octave+1, duree)
let RE octave duree = (12*octave+2, duree)
let REd octave duree = (12*octave+3, duree)
let MI octave duree = (12*octave+4, duree)
let FA octave duree = (12*octave+5, duree)
let FAd octave duree = (12*octave+6, duree)
let SOL octave duree = (12*octave+7, duree)
let SOLd octave duree = (12*octave+8, duree)
let LA octave duree = (12*octave+9, duree)
let LAd octave duree = (12*octave+10, duree)
let SI octave duree = (12*octave+11, duree)

let c = 200
let n = 400
let np = 600
let b = 800
let bp = 1200

let jouerListe liste =
    List.map jouer liste

let jouerPartition liste =
    List.map jouerListe liste

let ligne1 = [ RE 5 n; SOL 5 n; LAd 5 c; LA 5 n; SOL 5 b; RE 6 n; DO 6 bp ]
let ligne2 = [LA 5 bp; SOL 5 n; LAd 5 c; LA 5 n; FAd 5 b; SOLd 5 n; RE 5 bp ] 
let ligne3 = [RE 5 b; RE 5 n; SOL 5 np; LAd 5 c; LA 5 n; SOL 5 b; RE 6 n; FA 6 b; MI 6 n ]
let ligne4 = [REd 6 b; SI 5 n; REd 6 np; RE 6 c; DOd 6 n; DOd 5 b; LAd 5 n; SOL 5 bp]
let partition = [ligne1; ligne2; ligne3; ligne4]

jouerPartition partition

// Lettre à Elise écrite par en 10 minutes par une fille n'ayant pas assisté au reste de l'atelier
// Seule explication : le DSL (Domain Specific Language) créé
// Petit couac : on n'avait pas paramétré le tempo, il a fallu recopier les fonctions pour le changer
// NB : elle connaissait le solfège :)
let jouer note =
        let hauteur, duree = note         
        commencer hauteur
        attendre (int ((float duree)/1.5*2.0)) 
        arreter hauteur

let jouerListe liste =
    List.map jouer liste

let jouerPartition liste =
    List.map jouerListe liste

let lettreAElise = [[ MI 6 c; REd 6 c ; MI 6 c; REd 6 c; MI 6 c; SI 5 c ; RE  6 c ; DO 6 c ; LA 5 n ]]
jouerPartition lettreAElise 
