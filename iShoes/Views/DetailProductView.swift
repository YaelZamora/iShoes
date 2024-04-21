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
    
    let columns = [GridItem(.fixed(180)), GridItem(.fixed(180))]
    
    var body: some View {
        ScrollView {
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
                
                HStack {
                    Text("Precio: **$430**")
                        .padding()
                    
                    Text("Envío gratis!")
                }.font(.title2)
                
                Text("Productos relacionados")
                    .padding()
                    .font(.title3)
                    .bold()
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(0..<10) { item in
                            ProductCard()
                        }
                    }
                }.frame(width: 350, height: 550)
                
                Spacer()
            }.navigationTitle("Product Detail")
                .navigationBarTitleDisplayMode(.inline)
        }.ignoresSafeArea()
    }
}

#Preview {
    DetailProductView()
}
