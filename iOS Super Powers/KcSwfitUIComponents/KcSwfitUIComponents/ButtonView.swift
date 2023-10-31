//
//  ButtonView.swift
//  KcSwfitUIComponents
//
//  Created by Daniel Cazorro Frías on 31/10/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        
        Button(action: {
            // Acción here
        }, label: {
                Text("Mi primer Botón")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(.title)
                    // .cornerRadius(20) // Hasta iOS15
                    .clipShape(RoundedRectangle(cornerRadius: 25))
        })
        
    }
}

#Preview {
    ButtonView()
}
