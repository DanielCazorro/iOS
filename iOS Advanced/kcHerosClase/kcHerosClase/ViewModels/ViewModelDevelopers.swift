//
//  ViewModelDevelopers.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 7/11/23.
//

import Foundation
import Combine

final class ViewModelDevelopers: ObservableObject {
    @Published var developers: [DeveloperModel]?
    var status = Status.none
    
    var suscriptors = Set<AnyCancellable>()
    
    init(testing:Bool = false, boots: [BootCamp]=[]) {
        if (testing) {
            getDevelopersTesting(boots: boots)
        } else {
            
        }
    }
    
    func getDevelopers() {
        self.status = .loading
        
        URLSession.shared
            .dataTaskPublisher(for: BaseNetwork().getSessionDevelopers())
            .tryMap{
                guard let response = $0.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                
                return $0.data
            }
            .decode(type: [DeveloperModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure:
                    self.status = .error(error: "Error buscando heroes")
                case .finished:
                    self.status = .loaded // Success
                }
            } receiveValue: { data in
                self.developers = data
            }
            .store(in: &suscriptors)
        
    }
    
    func getDevelopersTesting(boots:[BootCamp]){
        
        //Creo 2 bootcamps
        let b1 = BootCamp(id: boots[0].id, name: boots[0].name)
        let b2 = BootCamp(id: boots[1].id, name: boots[1].name)
        let b3 = BootCamp(id: boots[2].id, name: boots[2].name)
        let b4 = BootCamp(id: boots[3].id, name: boots[3].name)
        
        //Creo varios developers
        let d1 = DeveloperModel(apell1: "Bustos", apell2: "Esteban", id: "0101", email: "jlbustos1@keepcoding.es", photo: "https://media-exp1.licdn.com/dms/image/C5603AQFAargIfS-A4A/profile-displayphoto-shrink_200_200/0/1517710838821?e=1626912000&v=beta&t=wZ2Km9X6nWEOWo95Fu58D14OvIMdwhXtiOzQe4QIaVc", name: "Manuel", bootcamp: b1, heros: [])
        
        let d2 = DeveloperModel(apell1: "Bustos", apell2: "Esteban", id: "0102", email: "jlbustos1@keepcoding.es", photo: "https://media-exp1.licdn.com/dms/image/C5603AQFAargIfS-A4A/profile-displayphoto-shrink_200_200/0/1517710838821?e=1626912000&v=beta&t=wZ2Km9X6nWEOWo95Fu58D14OvIMdwhXtiOzQe4QIaVc", name: "Inma", bootcamp: b1, heros: [])
        
        let d3 = DeveloperModel(apell1: "Bustos", apell2: "Esteban", id: "0103", email: "jlbustos1@keepcoding.es", photo: "https://media-exp1.licdn.com/dms/image/C5603AQFAargIfS-A4A/profile-displayphoto-shrink_200_200/0/1517710838821?e=1626912000&v=beta&t=wZ2Km9X6nWEOWo95Fu58D14OvIMdwhXtiOzQe4QIaVc", name: "Francisco", bootcamp: b1, heros: [])
        
        let d4 = DeveloperModel(apell1: "Bustos", apell2: "Esteban", id: "0104", email: "jlbustos1@keepcoding.es", photo: "https://media-exp1.licdn.com/dms/image/C5603AQFAargIfS-A4A/profile-displayphoto-shrink_200_200/0/1517710838821?e=1626912000&v=beta&t=wZ2Km9X6nWEOWo95Fu58D14OvIMdwhXtiOzQe4QIaVc", name: "Ana maria", bootcamp: b1, heros: [])
        
        self.developers = [d1, d2, d3, d4]
    }
    
}
