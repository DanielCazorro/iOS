import Foundation

/** Sentencias de Control **/


let lettersCount = 20

if(lettersCount >= 5 && lettersCount < 20) {
    print("Tienes muchas cartas en el buzón")
} else if(lettersCount != 0 || lettersCount == 50) { // Esta comprobación no tiene sentido
    print("Tienes algunas cartas en el buzón")
} else {
    print("No tienes cartas en el buzón")
}


let lettersCount2 = 5

if(lettersCount2 >= 5 && lettersCount2 < 20) {
    print("Tienes muchas cartas en el buzón")
} else if(!(lettersCount2 == 0)) { // Este ejemplo es igual que el superior, solo que la negación la ejecuta en el completo de la comprobación
    print("Tienes algunas cartas en el buzón")
} else {
    print("No tienes cartas en el buzón")
}
