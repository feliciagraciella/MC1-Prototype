//
//  CommunityProfile.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 05/04/23.
//

import SwiftUI

struct CommunityProfile: View {
    var body: some View {
//        NavigationView{
            VStack {
                ZStack {
                    Image("header")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
//                        .foregroundColor(Color.myBlue)
                        .frame(height: 160)
                        
                    HStack {
                        
                        Image("profilepic")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(
                                    Circle().stroke(.black, lineWidth: 1)
                                )
                            
                        NavigationLink(destination: CommunityProfileJoined()){
                            Text ("Join")
                                .font(.system(size: 14))
                                .frame(width: 72, height: 32)
                                .buttonStyle(.bordered)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .offset(x: 40, y: 28)
                    }
                    .offset(x: 40, y: 88)
                    
                }
                .edgesIgnoringSafeArea(.top)
                
                Text("Kdrama World")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.top, 60)
                
                HStack {
                    starfill()
                    starfill()
                    starfill()
                    starfill()
                    Image(systemName: "star.leadinghalf.filled")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .padding(.trailing, -2)
                        .padding(.top, -6)
                        .foregroundColor(.yellow)
                    Text("4.9")
                        .font(.system(size: 16))
                        .padding(.top, -4)
                }
                
                Text("We discuss our favorite shows, share recommendations, and bond over our shared love for the unique storytelling and emotionally engaging plotlines of K-dramas.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(/*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    .padding(2)
                    .padding(.horizontal, 40)
                    .font(.system(size: 12))
                
                ScrollView(.vertical) {
                    VStack {
                        Group {
                            HStack{
                                Text("Interests")
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
                                Text("Discussions")
                                Spacer()
                            }.padding(.top, 24)
                            
                            Divider()
                            
                            discussion1()
                            discussion2()
                            discussion2()
                        }
                        
                        Group {
                            HStack{
                                Text("Members")
                                Spacer()
                            }
                            .padding(.top, 24)
                            
                            Divider()
                            
                            HStack {
                                ForEach(1...9, id:\.self) { _ in
                                    Image("profilepic")
                                        .resizable()
                                        .frame(width: 36, height: 36)
                                        .clipShape(Circle())
                                        .overlay(
                                                Circle().stroke(.black, lineWidth: 1)
                                            )
                                        .padding(.trailing, -22.0)
                                        }
                                Spacer()
                                
                                Text("+1,2K Members")
                                    .font(.system(size: 12))
//                                    .padding(.leading, 21.0)
                            }
                            .padding()
                            .background(.white)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.top)//coba hide
                    .padding(.horizontal, 28)
//                  .background(Color.ListBG)
                }
//                .padding(.bottom, 0.1)
                
                Spacer()
                
            }
            .edgesIgnoringSafeArea(.top)
            .background(Color.ListBG)
//        }
//        .navigationBarBackButtonHidden(true)
    }
}

struct discussion1 : View {
    var body : some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text("Descendants of The Sun recommended banget! OSTnya apalagi, enak enak banget")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .lineLimit(2)
                        
                    
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                        Text("Felicia")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                        Text("2 hours ago")
                            .font(.system(size: 8))
                    }
                }
                Spacer()
                
                Image(systemName: "chevron.forward.circle")
                    .foregroundColor(.white)
                    .padding(.top)
            }
            
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
        .padding()
        .background(.white)
        .cornerRadius(10)
    }
}

struct discussion2 : View {
    var body : some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text("Ada yang sudah nonton Goblin? Ceritanya gimana, bagus tidak?")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                        Text("Michelle")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                        Text("4 hours ago")
                            .font(.system(size: 8))
                    }
                }
                Spacer()
                Image(systemName: "chevron.forward.circle")
                    .foregroundColor(.white)
                    .padding(.top)
            }
            
            HStack {
                HStack {
                    Image(systemName: "hand.thumbsup.circle")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("907 Likes")
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
        .padding()
        .background(.white)
        .cornerRadius(10)
    }
}

struct starfill : View {
    var body : some View {
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 16, height: 16)
            .padding(.trailing, -5)
            .padding(.top, -6)
            .foregroundColor(.yellow)
    }
}
struct CommunityProfile_Previews: PreviewProvider {
    static var previews: some View {
        CommunityProfile()
    }
}
