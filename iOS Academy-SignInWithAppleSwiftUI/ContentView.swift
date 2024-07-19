//
//  ContentView.swift
//  iOS Academy-SignInWithAppleSwiftUI
//
//  Created by RainBowT on 2024/7/20.
//

import AuthenticationServices
import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("userID") var userID: String = ""
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    
    private var isSignedIn: Bool{
        !userID.isEmpty
    }
    
    var body: some View {
        NavigationView{
            VStack{
                if !isSignedIn{
                    SignInButtonView()
                }else{
                    //  Signed In
                    Text("Welcome back!")
                }
                
            }
        }
    }
}

struct SignInButtonView: View{
    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("userID") var userID: String = ""
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    
    var body: some View{
        SignInWithAppleButton(.continue){ request in
            request.requestedScopes = [.email,.fullName]
            
        }onCompletion: { result in
            switch(result){
                
            case .success(let auth):
                switch(auth.credential){
                case let credential as ASAuthorizationAppleIDCredential:
                    
                    let userID = credential.user
                    let email = credential.email
                    let firstName = credential.fullName?.givenName
                    let lastName = credential.fullName?.familyName
                    
                    self.userID = userID
                    self.email = email ?? ""
                    self.firstName = firstName ?? ""
                    self.lastName = lastName ?? ""
                    
                default:
                    break
                }
            case .failure(let error):
                print(error)
            }
        }
        .signInWithAppleButtonStyle(    colorScheme == .dark ?.white:.black)
        .frame(height: 50)
        .padding()
        .cornerRadius(8)
    }
}

#Preview {
    ContentView()
}
