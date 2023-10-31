//
//  Listas01View.swift
//  KcSwfitUIComponents
//
//  Created by Daniel Cazorro Frías on 31/10/23.
//

import SwiftUI

struct Listas01View: View {
    
    let heros = ["Thor","Spiderman", "Capitán América"]
    
    var body: some View {
        
        List {
            ForEach(heros, id: \.self){ data in
                // Pinto lo que quiero que sea la celda
                Text("\(data)")
            }
        }
        /*
        List {
            Text("Thor")
            Text("Spiderman")
            Text("Captain ")
        }
        */
        
        
    }
}

#Preview {
    Listas01View()
}
