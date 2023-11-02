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
        List {
            ForEach(Employees) { rh in
                EmpleadoRowView(employee: rh)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
