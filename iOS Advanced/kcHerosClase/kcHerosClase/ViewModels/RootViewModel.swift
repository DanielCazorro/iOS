//
//  RootViewModel.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import Foundation
import Combine

final class RootViewModel: ObservableObject {
    @Published var status = Status.none // Estado
    @Published var isLogged: Bool = false // Indica si el usuario está logueado
    
    // Token del login
    @Published var tokenJWT: String = "" // Aquí el token del login
    
    // Combine
    var suscriptors = Set<AnyCancellable>()
    
    
}
