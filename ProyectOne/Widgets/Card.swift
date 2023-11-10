//
//  Card.swift
//  ProyectOne
//
//  Created by Yael Javier Zamora Moreno on 08/11/23.
//

import SwiftUI

struct Card: View {
    
    var idImage: Int = 50
    var nombreProducto: String = "Pájaro bello"
    var precioProducto: String = "$62"
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: "https://picsum.photos/id/\(idImage)/200/150")).padding(.bottom, 10)
            Text(nombreProducto).bold().font(.title2).padding(.leading, 10).foregroundStyle(.black)
            Text(precioProducto).padding(.leading, 10).foregroundStyle(.black)
            Spacer()
        }.frame(width: 200, height: 250).background(.thinMaterial).clipShape(.rect(cornerRadius: 20))
    }
}
