//
//  ContentView.swift
//  kcMultiplataforma2023
//
//  Created by Daniel Cazorro Frías on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    
    private var Employees = getTestData()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Employees) { rh in
                    NavigationLink {
                        // Destination
                        Text("Destino")
                    } label: {
                        EmpleadoRowView(employee: rh)
                    }

                }
            }
            .navigationTitle("Empleados")
        }
    }
}

#Preview {
    ContentView()
}
