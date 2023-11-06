//
//  LoginView.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Text("Test")
    }
}

//es, en
#Preview {
    LoginView()
        .environment(\.locale, .init(identifier: "es"))
       // .environment(\.locale, .init(identifier: "en"))
}
