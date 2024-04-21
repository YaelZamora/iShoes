//
//  DetailProductView.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct DetailProductView: View {
    @Namespace var animation
    
    let tallas = [36, 36.5, 37, 37.5, 38, 38.5, 39]
    let selectedTalla = [false, false, false, false, false, false, false]
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: "https://picsum.photos/\(Int(UIScreen.screenWidth))")).matchedGeometryEffect(id: "image", in: animation)
            
            Text("Zapato de vestir")
                .font(.largeTitle)
                .bold()
                .padding()
            
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<tallas.count, id: \.self) { index in
                        SizeButton(size: tallas[index], selected: selectedTalla[index]).padding(.leading)
                    }
                }
            }
            
            Text("Marca: **Adidas**")
                .font(.title)
                .padding(.leading)
            
            
            
            Spacer()
        }.ignoresSafeArea()
    }
}

#Preview {
    DetailProductView()
}
