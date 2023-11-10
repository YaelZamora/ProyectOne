//
//  HomeView.swift
//  ProyectOne
//
//  Created by Yael Javier Zamora Moreno on 10/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                Label("", systemImage: "cart")
            }
            UserView().tabItem {
                Label("", systemImage: "person")
            }
        }
    }
}

#Preview {
    HomeView()
}
