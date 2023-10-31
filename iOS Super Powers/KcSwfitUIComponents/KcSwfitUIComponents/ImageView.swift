//
//  ImageView.swift
//  KcSwfitUIComponents
//
//  Created by Daniel Cazorro Frías on 31/10/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image(systemName: "house")
            .resizable()
            .frame(width: 200, height: 200)
            
    }
}

#Preview {
    ImageView()
}
