//
//  HomeView.swift
//  iShoes
//
//  Created by Yael Javier Zamora Moreno on 20/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            HomeTab().tabItem {
                Label("", systemImage: "house")
            }
            
            CartTab().tabItem {
                Label("", systemImage: "cart")
            }
            
            UserTab().tabItem {
                Label("", systemImage: "person")
            }
        }
    }
}

#Preview {
    HomeView()
}
