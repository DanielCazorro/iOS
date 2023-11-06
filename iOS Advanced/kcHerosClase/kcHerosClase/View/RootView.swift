//
//  RootView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var rootViewModel: RootViewModel
    
    var body: some View {
        // Status Box or ViewRouter
        
        switch rootViewModel.status {
        case Status.none:
            LoginView() // lgin
        case .register:
            Text("Registro")
        case .loading:
            Text("Cargando datos...")
        case .error(error: let errorString):
            Text("Error -> \(errorString)")
        case . loaded:
            Text("Home de la app")
        }
        
    }
}

#Preview {
    RootView()
        .environmentObject(RootViewModel())
}
