//
//  SplashViewModel.swift
//  DragonBall
//
//  Created by Daniel Cazorro Frías on 27/10/23.
//

import Foundation

class SplashViewModel: SplashViewControllerDelegate {
    private let apiProvider: ApiProviderProtocol
    private let secureDataProvider: SecureDataProviderProtocol
    
    var viewState: ((SplashViewState) -> Void)?
    
    private var isLogged: Bool {
        secureDataProvider.getToken()?.isEmpty == false
    }
    
    init(apiProvider: ApiProviderProtocol, secureDataProvider: SecureDataProviderProtocol) {
        self.apiProvider = apiProvider
        self.secureDataProvider = secureDataProvider
    }
    
    func onViewAppear() {
        viewState?(.loading(true))
        
        DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(1)) {
            self.isLogged ? self.viewState?(.navigateToHeroes) : self.viewState?(.navigateToLogin)
        }
    }
    
}
