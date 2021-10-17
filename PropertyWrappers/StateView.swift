//
//  StateView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/17/21.
//


// ProppertyWrapper permiten almacenar valores y actualizar
import SwiftUI
// observableObject es para decir que el objecto que se mantenga observando modificaciones
class UserData: ObservableObject {
    // el published es para decir que el valor que se mantiene observando pueda ser leido, modificado y leyendo
    @Published var name = "Jeffry Rodriguez"
    @Published var age = 23
}

struct StateView: View {
    // Se usa state cuando tengamos una propiedad que va modificar su valor  
   @State private var count = 0
    @State private var selection: Int?
    // state no aplica a actualizaciones de tipo observable object porque no es un tipo primario es mas complejo y que funciona por refencia no por valor
   @StateObject private var user = UserData()
    var body: some View {
        NavigationView{
            
            VStack {
                Text("El valor actual es \(count)")
                Button("sumar 1 ") {
                    count += 1
                }
                Text("Mi nombre es \(user.name) y mi edad es \(user.age)")
                // Para poder actualizar los valores debemos hacerlo que una propiedad tipos wrapper para que el valor de este sea mutable
                Button("Actualizar datos ") {
                    user.name = "Jeffry Lorenzo \(count)"
                }
                NavigationLink(destination: BindingView(value: $count, user: user), tag : 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
            }.navigationTitle("ViewState")
        }
    
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
