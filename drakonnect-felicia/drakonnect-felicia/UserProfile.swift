//
//  UserProfile.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 05/04/23.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack {
            ZStack {
                Image("header2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
//                        .foregroundColor(Color.myBlue)
                    .frame(height: 160)
                    
                HStack {
                    
                    Image("profilepic2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(
                                Circle().stroke(.black, lineWidth: 1)
                            )
                }
                .offset(y: 88)
                
            }
            .edgesIgnoringSafeArea(.top)
            
            Text("Felicia")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding(.top, 60)
            
            
            Text("laksjdflkajs dlfkajsdlkfjalksdjfnlaksdnjflaksjdf laks jdflasdflkaj sldkjfalksdj flakjdslifa sldfkjals djflasdjf alsdjfl aksdjf alsdkfj aldkfj")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(2)
                .padding(.horizontal, 40)
                .font(.system(size: 12))
            
            ScrollView(.vertical) {
                VStack {
                    Group {
                        HStack{
                            Text("Genres")
                            Spacer()
                        }
                        Divider()
                        
                        HStack {
                            VStack {
                                Text("Romance")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                Text("Comedy")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            VStack {
                                Text("Horror")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                
                                Spacer()
                            }
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            
                            Spacer()
                            
                            VStack {
                                Text("Family")
                                    .font(.system(size: 14))
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                Spacer()
                            }
                        }
                    }
                    
                    Group {
                        HStack{
                            Text("Actors")
                            Spacer()
                        }
                        .padding(.top, 24)
                        Divider()
                        
                        HStack {
                            VStack {
                                Text("Park Seo-joon")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                Text("Suzy")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            VStack {
                                Text("Gong Yoo")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                Text("Song Joong-ki")
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            
                            Spacer()
                            
                            VStack {
                                Text("Choi Si-won")
                                    .font(.system(size: 14))
                                    .frame(width: 104, height: 36)
                                    .buttonStyle(.bordered)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                Spacer()
                            }
                        }
                    }
                    
                }
                .padding(.top)
                .padding(.horizontal, 28)
//                  .background(Color.ListBG)
            }
//                .padding(.bottom, 0.1)
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color.ListBG)
        
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
