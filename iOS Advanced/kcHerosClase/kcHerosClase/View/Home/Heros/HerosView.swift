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
        NavigationStack {
            List {
                if let heros = viewModel.heros{
                    ForEach(heros) { data in
                        NavigationLink {
                            
                        } label: {
                            HeroesRowView(hero: data)
                                .frame(height: 200)
                        }
                    }
                }
            }
            .navigationTitle("Heros")
        }
        .searchable(text: $filter, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search Hero...")
        .onChange(of: filter) { oldValue, newValue in
            viewModel.getHeros(filter: newValue)
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
