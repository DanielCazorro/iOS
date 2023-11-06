//
//  KeyChain.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import KeychainSwift

// Guardamos
func saveKC(key: String, value: String) -> Bool {
    // Conviertiendo cadena value en data con codificación utf8
    if let data = value.data(using: .utf8){
        return KeychainSwift().set(data, forKey: key)
    } else {
        // No desempaquete
        return false
    }
}

// Leemos
func loadKC(key: String)


// Borramos
