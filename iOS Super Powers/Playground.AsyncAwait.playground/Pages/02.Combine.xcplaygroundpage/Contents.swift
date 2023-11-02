/*
 
 Closures
 
 */
import Foundation
import Combine
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// Modelo de BootCamps
struct BootCamps: Codable {
    let id: UUID
    let name: String
}


// Extensión de URLResponse
extension URLResponse {
    func getStatusCode() -> Int? {
        if let httpResponse = self as? HTTPURLResponse {
            return httpResponse.statusCode
        }
        return nil
    }
}


// COMBINE
final class testLoad {
    var bootCamps: [BootCamps] = Array<BootCamps>()
    
    var suscriptors = Set<AnyCancellable>() // Suscriptor
    
    func loadBootCamps(){
        let url = URL(string: "https://dragonball.keepcoding.education/api/data/bootcamps")
        var request : URLRequest = URLRequest(url: url!)
        request.httpMethod = "GET"
        
        // Aquí empieza combine
        
    }
    
    
}
