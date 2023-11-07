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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DevelopersView(viewModel: ViewModelDevelopers())
}
