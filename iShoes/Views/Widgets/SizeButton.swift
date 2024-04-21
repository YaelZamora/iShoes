//
//  SizeButton.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 21/04/24.
//

import SwiftUI

struct SizeButton: View {
    @State var size = 36.5
    @State var selected = false
    
    var body: some View {
        Text("\(size, specifier: "%.1f")")
            .font(.title3)
            .bold()
            .frame(width: 75, height: 75)
            .background((selected) ? .blue : .gray.opacity(0.3))
            .foregroundColor((selected) ? .white : .black)
            .cornerRadius(10)
            .onTapGesture {
                withAnimation {
                    selected.toggle()
                }
            }
    }
}

#Preview {
    SizeButton()
}
