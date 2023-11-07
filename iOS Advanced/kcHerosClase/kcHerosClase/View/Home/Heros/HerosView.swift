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
            NavigationView {
                List(viewModel.heros, id: \.name) { data in
                    NavigationLink(destination: Text("Detalles de \(data.name)")) {
                        Text("\(data.name)")
                    }
                }
            }
        }
    }

    struct HerosView_Previews: PreviewProvider {
        static var previews: some View {
            HerosView(viewModel: viewModelHeros(testing: true))
        }
    }

#Preview {
    HerosView(viewModel: viewModelHeros(testing: true))
}
