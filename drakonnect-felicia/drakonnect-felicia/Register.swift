//
//  ContentView.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 04/04/23.
//

import SwiftUI

struct Register: View {

    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repassword: String = ""

    var body: some View {
        NavigationView {
            VStack{
                Image("Logo Drakonnect")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .padding(.bottom)
                
                VStack {
                    Text("Create New Account")
                        .bold()
                        .padding(.bottom)
                        .padding(.top)
                    
                    TextField("Username", text: $username)
                        .frame(width: 280, height: 48)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary)
                                )
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    TextField("Email", text: $email)
                        .frame(width: 280, height: 48)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary)
                                )
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    TextField("Password",text: $password)
                        .frame(width: 280, height: 48)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary)
                                )
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    TextField("Confirm Password", text: $repassword)
                        .frame(width: 280, height: 48)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary)
                                )
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    NavigationLink(destination: GenreList()) {
                        Text("Register")
                            .frame(width: 280, height: 48)
                            .buttonStyle(.bordered)
                            .background(Color.myBlue)
                            .foregroundColor(.white)
                            .cornerRadius(48)
                            .padding()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(20)
                .padding(.top)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.ListBG)
                
        }
        
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
