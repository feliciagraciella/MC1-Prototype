//
//  seeDiscussionNoLiked.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 09/04/23.
//

import SwiftUI

struct seeDiscussionNoLiked: View {
    @State private var cmments: String = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            Group {
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("Michelle")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("2 hours ago")
                        .font(.system(size: 10))
                }
                
                Text("Descendants of The Sun recommended banget! OSTnya apalagi, enak enak banget")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                
                HStack {
                    HStack {
                        Image(systemName: "hand.thumbsup.circle")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text("1,2K Likes")
                            .font(.system(size: 12))
                    }
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "bubble.right")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text("1K Comments")
                            .font(.system(size: 12))
                    }
                }
            }
            Divider()
            ScrollView(.vertical){
                Group {
                    cments()
                        .padding(.top)
                    cments()
                        .padding(.top)
                    cments()
                        .padding(.top)
                    cments()
                        .padding(.top)
                    cments()
                        .padding(.top)
                    cments()
                        .padding(.top)
                    cments()
                        .padding(.top)
                }
            }
            HStack{
                TextField("Enter a messsage", text: $cmments)
                    .padding(.horizontal)
                    .frame(height: 48)
                    .overlay(
                            RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.secondary)
                            )
                    .ignoresSafeArea(.keyboard)
                    .background(.white)
                    .cornerRadius(10)
//                Image(systemName: "photo.fill")
//                    .padding(.horizontal,4)
                Image(systemName: "paperplane.fill")
                    .padding(.horizontal,4)
            }
            
        }
        .padding()
        .background(Color.ListBG)
        
    }
}

struct cments: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 12, height: 12)
                Spacer()
            }
            .padding(.top, 1.0)
               
                
            VStack {
                HStack {
                    Text("Felicia")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 5, height: 5)
                    Text("2 hours ago")
                        .font(.system(size: 8))
                    Spacer()
                }
                
                VStack{
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Ada yang sudah nonton Goblin? Ceritanya gimana, bagus tidak?")
                                .font(.system(size: 12))
                        }
                        Spacer()
                    }
                    
                    HStack {
                        HStack {
                            Image(systemName: "hand.thumbsup.circle")
                                .resizable()
                                .frame(width: 12, height: 12)
                            Text("907 Likes")
                                .font(.system(size: 10))
                        }
                        
                        Spacer()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black)
                    )
            }
        }
        
    }
}

struct seeDiscussionNoLiked_Previews: PreviewProvider {
    static var previews: some View {
        seeDiscussionNoLiked()
    }
}
