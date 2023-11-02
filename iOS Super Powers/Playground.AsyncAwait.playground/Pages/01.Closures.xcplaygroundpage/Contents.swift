/*
 
    Closures
 
 */
import Foundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// Modelo de BootCamps
struct BootCamps: Codable {
    let id: UUID
    let name: String
}

// Definimos los typeAlias
typealias successClosure = ([BootCamps])->Void
typealias errorClosure = (() -> Void)?

// Extensión de URLResponse
extension URLResponse {
    func getStatusCode() -> Int? {
        if let httpResponse = self as? HTTPURLResponse {
            return httpResponse.statusCode
        }
        return nil
    }
}


final class testLoad {
    func loadBootCamps(onSuccess: @escaping successClosure, onError: errorClosure) -> Void{
        let url = URL(String: "https://dragonball.keepcoding.education/api/data/bootcamps")
        let request : URLRequest = URLRequest(url: url)
    }
}
