//
//  ContentView.swift
//  ViewBuilder
//
//  Created by Daniel Cazorro Frías on 7/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    private var esmujer = true
    
    
    var body: some View {
        VStack {
            Text("Color Hombre / Mujer")
                .font(.title)
                .if(<#T##condition: Bool##Bool#>, transform: <#T##(Text) -> View#>)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
