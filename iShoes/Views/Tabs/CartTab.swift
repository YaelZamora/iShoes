//
//  CartTab.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct CartTab: View {
    let precios = [430, 593, 123, 423, 414, 103, 130, 103, 142, 304, 800]
    
    var body: some View {
        Form {
            Section(header: Text("Productos")) {
                ForEach(precios, id: \.self) {index in
                    NavigationLink {
                        DetailProductView()
                    } label: {
                        Text("Zapato de: $\(index)")
                    }
                }
                
                NavigationLink("Checkout") {
                    //
                }
            }
        }
    }
}

#Preview {
    CartTab()
}
