//
//  UserTab.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct UserTab: View {
    let images = ["key", "person", "creditcard", "faceid"]
    
    let titles = ["Cambiar contraseña", "Administrar cuenta", "Formas de pago", "Administrar Face ID"]
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "https://picsum.photos/300")) { image in
                        image
                } placeholder: {
                    Image(systemName: "person").font(.system(size: 250).bold()).background(.gray).foregroundColor(.white)
                }
                .cornerRadius(150)
                
                Text("Yael Zamora").font(.largeTitle).bold()
                
                VStack(alignment: .leading) {
                    ForEach(0..<images.count, id: \.self) { index in
                        NavigationLink {
                            //
                        } label: {
                            HStack {
                                Label(titles[index], systemImage: images[index])
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                            }
                        }.padding().foregroundColor(.primary)
                    }
                }.frame(width: UIScreen.screenWidth)
                
                Button("Cerrar sesión") {
                    //
                }.frame(width: 300, height: 50).background(.red).foregroundColor(.white).cornerRadius(10)
            }
        }
    }
}

#Preview {
    UserTab()
}
