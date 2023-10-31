//
//  ScrollContentView.swift
//  KcSwfitUIComponents
//
//  Created by Daniel Cazorro Frías on 31/10/23.
//

import SwiftUI

struct ScrollContentView: View {
    
    let colors : [Color] = [.red, .green, .blue]
    
    var body: some View {
        ScrollViewReader{ value in
            ScrollView {
                
                Button(action: {
                    // Ir a la id = 45
                    withAnimation {
                        value.scrollTo(99)
                    }
                    
                }, label: {
                    Text("Saltar al 100")
                })
                
                
                
                ForEach(0..<100) { i in
                    Text("Example \(i)")
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .background(colors[i % colors.count])
                        .id(i)
                }
                
                
                Button(action: {
                    // Ir a la id = 45
                    withAnimation {
                        value.scrollTo(0)
                    }
                    
                }, label: {
                    Text("Volver al principio")
                })
            }
        }
        
    }
}

#Preview {
    ScrollContentView()
}
