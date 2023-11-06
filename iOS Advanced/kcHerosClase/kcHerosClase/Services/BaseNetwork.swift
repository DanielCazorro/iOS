//
//  BaseNetwork.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import Foundation

// Constantes
let server = "https://dragonball.keepcoding.education"

// Structs de métodos de red

struct HTTPMethods {
    static let post = "POST"
    static let get = "GET"
    static let put = "PUT"
    static let delete = "DELETE"
    
    static let content = "application/json"
}

enum endpoints: String {
    case login = "/api/auth/login"
}

struct BaseNetwork {
    
    // Monta la request del login
    func getSessionLogin(user: String, password: String) -> URLRequest {
        let urlCad = "\(server)\(endpoints.login.rawValue)"
        let encodeCredentials = "\(user):\(password)".data(using: .utf8)?.base64EncodedString()
        
        var sefCredential = ""
        if let credentials = encodeCredentials {
            sefCredential = "Basic \(credentials)"
        }
        
        // Creamos la request
        var request: URLRequest = URLRequest(url: URL(string: urlCad)!)
        request.httpMethod = HTTPMethods.post
        request.addValue(HTTPMethods.content, forHTTPHeaderField: "Content-type")
        request.addValue(sefCredential, forHTTPHeaderField: "Authorization")
        
        return request
        
    }
}
