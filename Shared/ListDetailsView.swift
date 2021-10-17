//
//  ListDetailsView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI

struct ListDetailsView: View {
    var programmer: programmer
    @Binding var favorite: Bool

    var body: some View {
        VStack(content: {
            programmer.image.resizable().frame(width: 200, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(radius: 5)
            HStack(content: {
                Text(programmer.name).font(.largeTitle)
                Button{
                    favorite.toggle()
                } label: {
                    if (favorite) {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star").foregroundColor(.black)
                    }
                   
                }
            })
            Text(programmer.languages).font(.title)
            Spacer()
        })
    }
}

struct ListDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailsView(programmer: programmer(id: 1, name: "Jeffry Rodriguez", languages: "React Native", image: Image(systemName: "person.fill"), favorite: true ), favorite: .constant(true))
    }
}
