//
//  ContentView.swift
//  Shared
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20,  content: {
            Text("Bienvenido al mundo de disney").foregroundColor(Color.blue)
                .padding().background(Color.gray)
            Spacer()
            ZStack( content: {
                Text("").frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(Color.gray).padding()
                Text("").frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(Color.green).padding(40)
                Text("").frame( maxWidth: .infinity,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(Color.red).padding(60)
                Text("").frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(Color.blue).padding(80)
            })
            Spacer()
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text("Hola mundo cruel")
                    .padding().background(Color.gray)
                Spacer()
                Text("Bienvenido al mundo de disney")
                    .padding().background(Color.gray)
            })
          
        }).background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
