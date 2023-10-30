//: [Previous](@previous)

import Foundation
import Combine

// MARK: - Suscriptores. Almacenamos el suscriptor -


// MARK: - Ejercicio 1. Almacenamos el suscriptor en una constante


print("------------------------------------------")
print("Ejercicio 1. Guardamos el suscritpor")
print("------------------------------------------")

let publisher2 = [1,2,3,4].publisher

let suscriptor2 = publisher2.sink { data in
    print("Ejercicio1: recibo \(data)")
}

let suscriptor1 : AnyCancellable?

suscriptor1 = publisher2.sink { data in
    print("Ejercicio1: recibo \(data)")
}

suscriptor1.cancel() // Cancelo suscriptor


print("------------------------------------------")
print("Ejercicio 2. Guardamos el suscritpor Store")
print("------------------------------------------")



//: [Next](@next)
