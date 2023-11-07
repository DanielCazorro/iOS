//
//  HerosView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import SwiftUI

struct HerosView: View {
    @StateObject var viewModel: viewModelHeros
    @State private var filter: String = ""
    
    var body: some View {
        Text("Hero List")
    }
}

#Preview {
    HerosView(viewModel: viewModelHeros(testing: true))
}
