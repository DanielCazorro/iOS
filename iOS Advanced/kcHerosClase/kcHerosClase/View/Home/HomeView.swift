//
//  HomeView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var rootviewModel: RootViewModel
    
    var body: some View {
        TabView {
            
            VStack{
                Text("Hero List")
                Button(action: {
                    rootviewModel.CloseSession()
                }, label: {
                    Text("Close Session")
                })
            }
            .tabItem {
                Image(systemName: "house")
                Text("Heros")
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(RootViewModel())
}
