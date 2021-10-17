//
//  MainView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(content: {
                    VStack(content: {
                        MapView().frame(height: 400)
                        ImageView().offset(y: -130)
                        ContentView()
                    })        })
     
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
