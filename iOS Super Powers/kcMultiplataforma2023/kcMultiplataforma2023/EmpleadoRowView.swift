//
//  EmpleadoRowView.swift
//  kcMultiplataforma2023
//
//  Created by Daniel Cazorro Frías on 2/11/23.
//

import SwiftUI

struct EmpleadoRowView: View {
    
    let employee: Empleados
    
    var body: some View {
        Text("\(employee.nombre)")
    }
}

#Preview {
    EmpleadoRowView(employee: Empleados(id: "100", nombre: "Daniel", apell1: "Cazorro", apell2: "San", idPhoto: "02", edad: 22))
        .previewLayout(.fixed(width: 400.0, height: 200.0))
}
