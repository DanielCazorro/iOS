//
//  DevelopersView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 7/11/23.
//

import SwiftUI

struct DevelopersView: View {
    @StateObject var viewModel: ViewModelDevelopers
    @EnvironmentObject var viewModelRoot: RootViewModel
    
    var body: some View {
        ScrollView {
            if let boots = viewModelRoot.bootcamps,
               let devs = viewModel.developers{
                
                ForEach(boots){ boot in
                    Text(boot.name)
                    
                    // filtrar por developers
                    let devsBoot =
                    devs.filter({$0.bootcamp.id == boot.id})
                    
                    
                    // Si hay developers en el bootcamp
                    if devsBoot.count > 0 {
                        Text(boot.name)
                        
                    } else {
                        Text("No")
                    }
                }

                
                
            } else {
                Text("No hay datos")
            }
        }
    }
}

#Preview {
    DevelopersView(viewModel: ViewModelDevelopers(testing: true, boots: RootViewModel(testing: true).bootcamps!))
        .environmentObject(RootViewModel(testing: true))
}
