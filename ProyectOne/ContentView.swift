//
//  ContentView.swift
//  ProyectOne
//
//  Created by Yael Javier Zamora Moreno on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Es mi primer proyecto")
            Text("Alejandro")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
