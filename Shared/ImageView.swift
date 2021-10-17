//
//  ImageView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("image1").padding(50).frame(width: 200, height: 200).background(Color.gray).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.blue, lineWidth: 4 )).shadow(color: Color.gray, radius: 5)
            Image(systemName: "person.fill.badge.minus").resizable().clipped().frame(width: 200, height: 200)
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
