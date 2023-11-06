//
//  LoginView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import SwiftUI

struct LoginView: View {
    // Pilla la instancia del environment
    // @EnvironmentObject var rootViewModel: RootViewModel
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            // Imagen de fondo
            Image(decorative: "backgroundLogin")
                .resizable()
                .opacity(1)
            
            // Capa oscurecer imagen
            Image(decorative: "")
                .resizable()
                .background(.black)
                .opacity(0.2)
            
            // Image(.backgroundLogin)  Esta función es igual que la superior, pero solo apta para nuevo iOS
            
            VStack{
                Image(.title)
                    .resizable()
                    .scaledToFit()
                    .opacity(0.8)
                    // .padding(.top, 160)
                
                // Usuario y clave
                VStack {
                    TextField("Hola", text: $email)
                        .padding()
                        .background(Color.white)
                        .foregroundStyle(.blue)
                        .cornerRadius(20)
                        .shadow(radius: 10.0, x:20, y:20)
                }
            }
            
        
        }
        .ignoresSafeArea()
        
        
    }
}

//es, en
#Preview {
    LoginView()
        .environment(\.locale, .init(identifier: "es"))
       // .environment(\.locale, .init(identifier: "en"))
}
