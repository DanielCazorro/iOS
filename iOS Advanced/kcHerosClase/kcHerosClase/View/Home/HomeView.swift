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
        VStack {
            Text("Hey! We are Home")
            
            Button(action: {
                rootviewModel.CloseSession()
            }, label: {
                Text("Close Session")
            })
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(RootViewModel())
}
