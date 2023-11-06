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
    @Published var tokenJWT: String = "" {
        didSet {
            print("Llega login: \(tokenJWT)")
            // Guardar en el KeyChain
        }
    }
    
    // Combine
    var suscriptors = Set<AnyCancellable>()
    
    // Login al servidor
    func login(user:String, password: String) {
        
        status = .loading
        
        URLSession.shared
            .dataTaskPublisher(for: BaseNetwork().getSessionLogin(user: user, password: password))
            .tryMap{
                // Evaluamos si es 200, sino lo es: Exception. Si es 200, devolvemos el JSON, que es el data
                guard let response = $0.response as?  HTTPURLResponse,
                      response.statusCode == 200 else {
                    //Error
                    throw URLError(.badServerResponse)
                }
                
                // Todo OK. Convierto el Data -> Cadena usando codificación utf8
                return String(decoding: $0.data, as: UTF8.self)
            }
            .receive(on: DispatchQueue.main) // Hilo principal
            .sink { completion in
                // Evaluamos la respuesta
                switch completion {
                case .failure:
                    self.status = .error(error: "Usuario y/o clave incorrecta") // Login Error
                case .finished:
                    self.status = .loaded // Login OK
                }
                
            } receiveValue: { token in
                self.tokenJWT = token
            }
            .store(in: &suscriptors)
        
    }
    
}
