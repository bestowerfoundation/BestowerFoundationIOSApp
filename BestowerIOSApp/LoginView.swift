//
//  LoginView.swift
//  BestowerIOSApp
//
//  Created by user232108 on 12/29/22.
//

import SwiftUI

struct LoginView: View {
    @Binding var username: String
    @Binding var password: String
    
    @Binding var authenticationDidFail: Bool
    @Binding var authenticationDidSucceed: Bool
    
    var body: some View {
        
        VStack {
            WelcomeText()
            UserImage()
            UsernameTextField(username: $username)
            PasswordSecureField(password: $password)
            
            if authenticationDidFail {
                Text("Information not correct. Try again.")
                    .offset(y: -10)
                    .foregroundColor(.red)
            }
            
            Button(action: {
                if self.username == "bestower" && self.password == "bestower123" {
                                    self.authenticationDidSucceed = true
                                    self.authenticationDidFail = false
                                } else {
                                    self.authenticationDidFail = true
                                }
                            }) {
                LoginButtonContent()
            }
        }
        .padding()
        
    }
}

/*struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        //LoginView()
    }
}*/




struct WelcomeText: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("userImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            .autocapitalization(.none)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
