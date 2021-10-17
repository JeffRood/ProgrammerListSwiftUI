//
//  BindingView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/17/21.
//

import SwiftUI

struct BindingView: View {
    // Binding se encarga de almacenar una variable que puede mutar que viene de otra vista y puede ser modificada desde la segunda vista con binding, se utiliza cuando queremos leer o modificar una propiedad pero que la lista no es la propietaria de esta propiedad
    @Binding var value: Int
    // ObservableObject es para los tipo StateObject cuando la vista no sea el propietario y quiera leer o modificar su valor
    @ObservedObject var user: UserData
    @State private var selection: Int?

     var body: some View {
         VStack {
             Button("sumar 2 ") {
                 value += 2
             }
            Button("Actualizar datos  ") {
                user.name = "jeffry ha sido actualizado desde el binding View"
                user.age = 30
            }
            NavigationLink(destination: EnviorementView(), tag : 1, selection: $selection) {
                Button("Ir a EnviorementView") {
                    selection = 1
                }
            }

            
         }
     }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData()).environmentObject(UserData())
    }
}
