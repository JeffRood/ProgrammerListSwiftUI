//
//  ListView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/15/21.
//

import SwiftUI

final class ProgrammerModelData: ObservableObject {
    @Published var programmers = [programmer(id: 0, name: "Jeffry Rodriguez", languages: "React Native", image: Image(systemName: "person.fill"), favorite: true),
                                       programmer(id: 1, name: "Rafael Martinez", languages: "Java", image: Image(systemName: "person.fill"), favorite: false),
                                       programmer(id: 2, name: "Julio Ramirez", languages: "Python", image: Image(systemName: "person.fill"), favorite: false),
                                       programmer(id: 3, name: "Ramon Hernandez", languages: "UI", image: Image(systemName: "person.fill"), favorite: false)]
}


struct ListView: View {
    
    @EnvironmentObject var programmerModelData: ProgrammerModelData
    @State private var showFavorites = false;
    
    private var filteredProgrammers: [programmer] {
        return programmerModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite;
        }
    }
    
    var body: some View {
        NavigationView(content: {
        VStack(content: {
            Toggle(isOn: $showFavorites) {
                Text("show Favorites")
            }.padding()
           
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailsView(programmer: programmer, favorite:
                                                                    $programmerModelData.programmers[programmer.id].favorite             ) ) {
                        RowView(programmer: programmer)
                    }
                    
                }.navigationTitle("Programmers")
            })
        })
     
      
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
            ListView().environmentObject(ProgrammerModelData())
    }
}
