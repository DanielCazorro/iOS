import Foundation

/** Sentencias de Control **/

// MARK: If

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


// MARK: Switch


let postmansCount = 3

switch(postmansCount) {
case 0: print("No hay carteros")
case 1...5: print("Hay pocos cartero")
default: print("Hay muchos carteros")
}

// Este if sería la versión con if del switch superior
if(postmansCount == 0) {
    print("No hay carteros")
} else if(postmansCount >= 1 && postmansCount <= 5) {
    print("Hay un cartero")
} else {
    print("Hay muchos carteros")
}

enum Mailboxroperties {
    case capacity(Int)
    case adress(String)
}

let mailboxType = Mailboxroperties.adress("Puerta del Sol, Madrid")

switch(mailboxType) {
case .capacity(let count): print("La capacidad es \(count)")
case .adress(let address): print("La dirección es \(address)")
}
