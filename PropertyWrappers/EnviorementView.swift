//
//  EnviorementView.swift
//  SwiftStart (iOS)
//
//  Created by Jeffry Rodriguez on 10/17/21.
//

import SwiftUI

struct EnviorementView: View {
    // es para valores que queremos propagar en multiples vista de nuestra app. 
    @EnvironmentObject var user: UserData
    var body: some View {
        Text("llegue aqui")
    }
}

struct EnviorementView_Previews: PreviewProvider {
    static var previews: some View {
        EnviorementView().environmentObject(UserData())
    }
}
