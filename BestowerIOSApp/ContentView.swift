//
//  ContentView.swift
//  BestowerIOSApp
//
//  Created by user232215 on 12/21/22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        
        ZStack {
            if !authenticationDidSucceed {
                LoginView(username: self.$username, password: self.$password, authenticationDidFail: $authenticationDidFail, authenticationDidSucceed: $authenticationDidSucceed)

            } else {
                Text("IT WORKED!!!! YAAY!!!")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






// this comment was added by tahsin





