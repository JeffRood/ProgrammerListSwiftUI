//
//  RowView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI

struct RowView: View {
    
    var programmer: programmer
    var body: some View {
        HStack(content: {
            programmer.image.resizable().frame(width: 40, height: 40).padding()
            VStack(alignment: .leading,  content: {
                Text(programmer.name)
                    .font(.title).foregroundColor(Color.blue).padding(2)
                Text(programmer.languages)

            })
            Spacer()
            if  (programmer.favorite) {
                
                Image(systemName: "star.fill").resizable().frame(width: 30, height: 30).padding().foregroundColor(.yellow)
            }
          
        })
      
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: programmer(id: 1, name: "Jeffry Rodriguez", languages: "React Native", image: Image(systemName: "person.fill"), favorite: false ))
    }
}
