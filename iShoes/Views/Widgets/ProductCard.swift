//
//  ProductCard.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct ProductCard: View {
    @State var quantity = 0
    @Namespace var animation
    
    var body: some View {
        VStack {
            NavigationLink {
                DetailProductView()
            } label: {
                AsyncImage(url: URL(string: "https://picsum.photos/150/120")).frame(width: 150, height: 120).matchedGeometryEffect(id: "image", in: animation)
            }
            HStack {
                Text("Zapato").font(.callout)
                
                Spacer()
                
                Button("", systemImage: "cart.badge.plus") {
                    quantity += 1
                }
            }.frame(width: 130, height: 55)
        }.frame(width: 150, height: 175)
            .background(.gray.opacity(0.3))
            .cornerRadius(20)
    }
}

#Preview {
    ProductCard()
}
