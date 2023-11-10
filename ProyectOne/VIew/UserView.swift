//
//  UserView.swift
//  ProyectOne
//
//  Created by Yael Javier Zamora Moreno on 10/11/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "https://picsum.photos/id/32/400/350")).clipShape(Circle())
                Text("Yael Zamora").bold().font(.largeTitle)
                HStack(spacing: 40) {
                    VStack {
                        Text("Compras")
                        Text("5")
                    }
                    Divider().background(.black).frame(height: 40)
                    VStack {
                        Text("Ventas")
                        Text("10")
                    }
                    Divider().background(.black).frame(height: 40)
                    VStack {
                        Text("Favoritos")
                        Text("23")
                    }
                }.padding(.bottom, 50)
                Button {
                    //
                } label: {
                    Text("Configuración").padding(.horizontal, 100).padding(.vertical, 20).background(.gray).clipShape(.buttonBorder).foregroundStyle(.white)
                }
                Button {
                    //
                } label: {
                    Text("Cerrar sesión").padding(.horizontal, 100).padding(.vertical, 20).background(.red).clipShape(.buttonBorder).foregroundStyle(.white).bold()
                }
            }
        }
    }
}

#Preview {
    UserView()
}
