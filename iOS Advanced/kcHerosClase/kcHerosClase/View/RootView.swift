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
            withAnimation {
                LoginView() // Login
            }
          
        case .register:
            Text("Registro")
        case .loading:
            withAnimation {
                LoaderView()
            }

        case .error(error: let errorString):
            Text("Error -> \(errorString)")
        case . loaded:
            Text("Home app")
        }
    }
}

#Preview {
    RootView()
        .environmentObject(RootViewModel())
}
