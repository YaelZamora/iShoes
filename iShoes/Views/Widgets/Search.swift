//
//  Search.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct Search: View {
    @State private var buscador = ""
    
    var body: some View {
        TextField("Buscar zapato...", text: $buscador)
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke())
            .padding()
    }
}

#Preview {
    Search()
}
