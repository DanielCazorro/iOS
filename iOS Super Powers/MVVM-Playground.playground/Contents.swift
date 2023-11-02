/*
 MVVM iOS13-16
 
 MVVM con SwiftUI
 */

import SwiftUI
import Combine
import PlaygroundSupport // Solo para que funcione SwfitUI aquí

// -------- Models --------

struct Person: Codable {
    let id: UUID
    let name: String
    let apells: String
    let nif: String
}

enum Estados {
    case none, loading, loaded, error
}


// ---------- View ---------

final class ViewModelPerson: ObservableObject {
    
    @Published var data: Person? // Modelo de la persona
    @Published var estado: Estados = .none // Estado de la llamada de red (simulada)
    
    init(){
        loadPerson()
    }
    
    // Carga el empleado simulando llamada de red
    
    func loadPerson(){
        estado = .loading // Cambia el estado
        
        // Simulamos una llamada de red, que esperamos 2 segundos
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
            self.data = Person(id: UUID(), name: "Manuel", apells: "Bustos Llanos", nif: "12345678H")
            self.estado = .loaded
        }
    }
}
