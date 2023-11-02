/*
 
 Async Await
 
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
