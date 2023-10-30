//: [Previous](@previous)

import Foundation

//MARK: - KVO. Observadores de propiedad -

// Ejemplo de observador de propiedad sencillo con Swift

var name = "" {
    willSet {
        print("Nuevo valor futuro -> \(newValue)")
        // keychain -> Borrar
    }
    
    didSet {
        print("Nuevo valor asignado -> \(name)")
    }
}

name = "Luis"


//: [Next](@next)
