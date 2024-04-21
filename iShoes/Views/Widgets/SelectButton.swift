//
//  SelectButton.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct SelectButton: View {
    @State var categoria = "Deportivos"
    @State var selected = false
    
    var body: some View {
        Text(categoria)
            .padding()
            .background((selected) ? .blue : .gray.opacity(0.1))
            .cornerRadius(15)
            .foregroundColor((selected) ? .white : .black)
            .onTapGesture {
                selected.toggle()
            }
    }
}

#Preview {
    SelectButton()
}
