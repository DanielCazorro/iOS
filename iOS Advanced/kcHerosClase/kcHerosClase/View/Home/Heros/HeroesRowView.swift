//
//  HeroesRowView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 7/11/23.
//

import SwiftUI

struct HeroesRowView: View {
    var hero: Heros // modelo
    
    var body: some View {
        ZStack {
            // Foto del empleado
            AsyncImage(url: URL(string: hero.photo)) { photo in
                // Foto descargada
            } placeholder: {
                Image(systemName: "photo")
            }

            // VStack para nombre y "me gusta"
            VStack {
                // Name
                
                // Like
                
            }
        }
    }
}

#Preview {
    HeroesRowView(hero: Heros(id: UUID(), name: "Goku", description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.", photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300", favorite: true))
}
