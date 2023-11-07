//
//  ContentView.swift
//  ViewBuilder
//
//  Created by Daniel Cazorro Frías on 7/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    private var esmujer = false
    
    
    var body: some View {
        VStack {
            Text("Color Hombre / Mujer")
                .font(.title)
                .if(esmujer) { Text in
                    // Transformación
                    Text
                        .foregroundStyle(.orange)
                }
                .if(!esmujer) { Text in
                    // Transformacion
                    Text
                        .foregroundStyle(.blue)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
