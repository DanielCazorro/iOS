//: [Previous](@previous)

import Foundation
import Combine


// MARK: - Publicadores tipo Subjects -

print("-----------------------------------")
print("Publicadores tipo Subjects")
print("-----------------------------------")

print("-----------------------------------")
print("Ejercicio 1 - Subject Valor actual")
print("-----------------------------------")


let subject = CurrentValueSubject<Int, Never>(0) // Inicializado a cero

subject.value // Ver el valor
subject.send(1) // Envío 1 por el publicador
subject.send(2) // Envío 2 por el publicador
subject.value

// Creamos un suscriptor
/*let suscriber = subject.sink { data in
    print("Ejercicio 1 recibo valor: \(data)")
}
*/
// Este es igual que el de arriba, pero está mas aceptado por la comunidad
let suscriber = subject.sink {
    print("Ejercicio 1 recibo valor: \($0)")
}

// Emito mas valor
subject.send(11) // Envío 11 por el publicador
subject.send(22) // Envío 22 por el publicador

// Finalizar la emisión con success o error
subject.send(completion: .finished)

// Este publicador no puede emitir porque en la línea de código superior se ha terminado la emisión
subject.send(33)


//: [Next](@next)
