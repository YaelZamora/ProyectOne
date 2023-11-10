//
//  ContentView.swift
//  ProyectOne
//
//  Created by Yael Javier Zamora Moreno on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    
    let ids = [31, 32, 52, 22, 45]
    let nombres = ["Pájaro bonito", "Pájaro bello", "Pájaro feo", "Pájaro grande", "Pájaro chico"]
    let precios = ["$50", "$62", "10", "$25", "$15"]
    let precioInt = [50, 62, 10, 25, 15]
    
    let idsPerros = [52, 65, 524, 342, 95]
    let nombresPerros = ["Perro bonito", "Perro bello", "Perro feo", "Perro grande", "Perro chico"]
    let preciosPerros = ["$150", "$72", "50", "$45", "$25"]
    let precioIntPerros = [150, 72, 50, 45, 25]
    
    let idsGatos = [142, 435, 56, 42, 651]
    let nombresGatos = ["Gato bonito", "Gato bello", "Gato feo", "Gato grande", "Gato chico"]
    let preciosGatos = ["$70", "$52", "40", "$15", "$5"]
    let precioIntGatos = [70, 52, 40, 15, 5]
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Pájaros en venta").font(.largeTitle).bold()
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<5) { item in
                                NavigationLink {
                                    InfoView(idImage: ids[item], precio: precioInt[item], nombreProducto: "\(nombres[item])", precioProducto: "\(precios[item])")
                                } label: {
                                    Card(idImage: ids[item], nombreProducto: "\(nombres[item])", precioProducto: "\(precios[item])")
                                }
                            }
                        }
                    }
                    Text("Perros en venta").font(.largeTitle).bold()
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<5) { item in
                                NavigationLink {
                                    InfoView(idImage: idsPerros[item], precio: precioIntPerros[item], nombreProducto: "\(nombresPerros[item])", precioProducto: "\(preciosPerros[item])")
                                } label: {
                                    Card(idImage: idsPerros[item], nombreProducto: "\(nombresPerros[item])", precioProducto: "\(preciosPerros[item])")
                                }
                            }
                        }
                    }
                    Text("Gatos en venta").font(.largeTitle).bold()
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<5) { item in
                                NavigationLink {
                                    InfoView(idImage: idsGatos[item], precio: precioIntGatos[item], nombreProducto: "\(nombresGatos[item])", precioProducto: "\(preciosGatos[item])")
                                } label: {
                                    Card(idImage: idsGatos[item], nombreProducto: "\(nombresGatos[item])", precioProducto: "\(preciosGatos[item])")
                                }
                            }
                        }
                    }
                }.padding(.leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
