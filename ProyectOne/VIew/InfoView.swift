//
//  InfoView.swift
//  ProyectOne
//
//  Created by Yael Javier Zamora Moreno on 08/11/23.
//

import SwiftUI

struct InfoView: View {
    
    @State private var cantidad = 1
    @State private var total = 50
    
    var idImage: Int = 50
    var precio: Int = 62
    var nombreProducto: String = "Pájaro bello"
    var precioProducto: String = "$62"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: "https://picsum.photos/id/\(idImage)/400/350")).ignoresSafeArea()
                Text(nombreProducto).bold().font(.largeTitle).padding(.leading, 20)
                Text(precioProducto).font(.title).padding(.leading, 20).padding(.bottom, 20)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eleifend varius nulla, id luctus ipsum molestie at. Curabitur arcu urna, commodo et laoreet ac, vehicula sed ligula. Mauris dapibus, ligula non scelerisque molestie, orci purus gravida erat, non consequat augue nunc non metus. Cras porta facilisis sodales. Aenean semper condimentum vehicula. Vestibulum sit amet mi ut turpis consequat euismod. Nunc sit amet viverra ipsum, non hendrerit mi. Nulla vehicula diam ac arcu ultrices tempor. Vivamus lacinia vel urna sit amet dictum. Donec sit amet odio odio. In ac libero mi. Fusce interdum tristique metus, sed tempor ipsum consectetur sit amet.").padding(.leading, 20)
                HStack {
                    Button {
                        restar()
                    } label: {
                        Image(systemName: "minus").font(.title)
                    }
                    Text("\(cantidad)").font(.title)
                    Button {
                        suma()
                    } label: {
                        Image(systemName: "plus").font(.title)
                    }
                    Text("Precio total a pagar: \(total)").font(.title)
                }.padding().padding(.bottom, 40)
                Spacer()
            }
        }.ignoresSafeArea().onAppear(){
            total = precio
        }
    }
    
    func restar() {
        if cantidad == 0 {
            cantidad = 0
            totalPrecio()
        } else {
            cantidad -= 1
            totalPrecio()
        }
    }
    
    func suma() {
        cantidad += 1
        totalPrecio()
    }
    
    func totalPrecio() {
        total = cantidad * precio
    }
}

#Preview {
    InfoView()
}
