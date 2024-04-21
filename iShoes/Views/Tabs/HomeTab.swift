//
//  HomeTab.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct HomeTab: View {
    @State private var categorias = ["Deportivos", "Vestir", "Tacón", "Infantil"]
    
    @State private var selectedItems = [false, false, false, false, false]
    
    let columns = [GridItem(.fixed(180)), GridItem(.fixed(180))]
    
    var body: some View {
        ScrollView {
            VStack {
                Search()
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<categorias.count, id: \.self) { index in
                            SelectButton(categoria: categorias[index], selected: selectedItems[index])
                        }
                    }
                }
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(0..<10) { item in
                            ProductCard()
                        }
                    }
                }.frame(width: 350, height: 550)
            }
        }
    }
}

#Preview {
    HomeTab()
}
