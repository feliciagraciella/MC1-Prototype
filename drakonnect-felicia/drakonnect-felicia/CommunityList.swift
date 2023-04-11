//
//  CommunityList.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 05/04/23.
//

import SwiftUI

extension Color {
    public static let ListBG = Color("listbg")
    public static let myBlue = Color("drakonnectblue")
    public static let myBlack = Color("myBlack")
}

struct CommunityList: View {
    @State private var text: String = ""
    @State private var isEditing = false
    @State var selectedValue = 1
    
    var body: some View {
//        NavigationView {
            VStack(alignment: .leading) {
                Text("Community")
                    .font(.system(size: 34))
                    .fontWeight(.bold)
                    .padding([.top, .leading, .trailing])
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $text).foregroundColor(.black)
                        }
                        .padding(12)
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                        .padding(.horizontal, 16)
                        .padding(.top, -12.0)
                        .onTapGesture {
                            self.isEditing = true
                        }
                        .animation(.default)
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.text = ""
                            }) {
                            Text("Cancel")
                            }
                        .padding(.trailing, 16)
                        .padding(.top, -12.0)
                        .transition(.move(edge: .trailing))
                        .animation(.default)
                        }
                }
                    
                Picker("segments", selection: $selectedValue) {
                        Text("Joined").tag(0)
                        Text("Recomendations").tag(1)
                    }
                    .pickerStyle(.segmented)
                    .padding(.top, 4)
                    .padding(.horizontal)

                if (selectedValue == 0){
                        joined()
                    }
                else if(selectedValue == 1){
                        recommendations()
                    }
            }
    //        .navigationTitle("Community")
            .navigationBarBackButtonHidden(true)
    //        .navigationBarHidden(true)
            .background(Color.ListBG)
        }
//    }
        
}

struct recommendations : View {
    @State var seeMore = false
    @State var seeMoreA = false
    
    var body: some View{
        ScrollView(.vertical) {
            HStack {
                Text("Based on Genres that you like")
                    .fontWeight(.semibold)
                    .padding()
                
                Spacer()
                
//                NavigationLink(destination: SeeMoreCommunity()) {
//                    Text("See more")
//                        .font(.system(size: 12))
//                        .foregroundColor(.blue)
//                        .padding()
//                }
                
                Button{
                    seeMore = true
                } label: {
                    Text("See more")
                        .font(.system(size: 12))
                        .padding()
                        .sheet(isPresented: $seeMore, content: {
                            moreGenre().foregroundColor(.black)
                    })
                }
                
            }
            
            VStack (spacing: 12){
                NavigationLink(destination: CommunityProfile()) {
                    KdramaWorld().foregroundColor(.black)
                }
                NavigationLink(destination: CommunityProfile()) {
                    KdramaAddict().foregroundColor(.black)
                }
                NavigationLink(destination: CommunityProfile()) {
                    KdramaWorld().foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            
            HStack {
                Text("Based on Actors that you like")
                    .fontWeight(.semibold)
                    .padding()
                
                Spacer()
                
                Button{
                    seeMoreA = true
                } label: {
                    Text("See more")
                        .font(.system(size: 12))
                        .padding()
                        .sheet(isPresented: $seeMoreA, content: {
                            moreActor().foregroundColor(.black)
                    })
                }
            }
            
            VStack (spacing: 12){
                NavigationLink(destination: CommunityProfile()) {
                    SuzyAddict().foregroundColor(.black)
                }
                NavigationLink(destination: CommunityProfile()) {
                    SuzyAddict().foregroundColor(.black)
                }
                NavigationLink(destination: CommunityProfile()) {
                    SuzyAddict().foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
        .padding(.bottom, 0.1)
        }
}

struct joined : View {
    var body : some View {
        ScrollView(.vertical) {
            VStack (spacing: 12){
                NavigationLink(destination: CommunityProfile()) {
                    KdramaWorld().foregroundColor(.black)
                }
                NavigationLink(destination: CommunityProfile()) {
                    KdramaAddict().foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
        .padding(.top)
        .padding(.bottom, 0.1)
    }
}

struct moreGenre: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Text("Based on Genres that you like")
                    .fontWeight(.semibold)
                    .padding(.trailing)
                
                Spacer()
                
                Button(action: { dismiss() }) {
                    Text("Close")
                        .foregroundColor(.blue)
                }
            }.padding(.top,24)
                .padding(.horizontal)
            
            ScrollView(.vertical) {
                VStack (spacing: 12){
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaWorld().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaWorld().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaWorld().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaWorld().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        KdramaAddict().foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
            }
        }
        .background(Color.ListBG)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct moreActor: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Text("Based on Actors that you like")
                    .fontWeight(.semibold)
                    .padding(.trailing)
                
                Spacer()
                
                Button(action: { dismiss() }) {
                    Text("Close")
                        .foregroundColor(.blue)
                }
            }.padding(.top,24)
                .padding(.horizontal)
            
            ScrollView(.vertical) {
                VStack (spacing: 12){
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                    NavigationLink(destination: CommunityProfile()) {
                        SuzyAddict().foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
            }
        }
        .background(Color.ListBG)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct KdramaWorld: View {
    var body: some View {
        HStack{
            Image("profilepic")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            
            VStack(alignment: .leading) {
                Text("Kdrama World")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.leading)
                    
                HStack {
                    Text("Romance")
                        .font(.system(size: 12))
                        .frame(width: 68, height: 28)
                        .buttonStyle(.bordered)
                        .background(Color.myBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                    Text("Comedy")
                        .font(.system(size: 12))
                        .frame(width: 68, height: 28)
                        .buttonStyle(.bordered)
                        .background(Color.myBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.leadinghalf.filled")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -2)
                        .foregroundColor(.yellow)
                    Text("4.9")
                        .font(.system(size: 14))
                        .padding(.top, 2.0)
                }
            }
//            .padding(.leading, 4)
            .frame(width: 160)
                
            Spacer()
            
            Image(systemName: "chevron.right")
                .padding(.trailing, 8)

        }
        .padding()
        .background(.white)
        .cornerRadius(10)
    }
}

struct KdramaAddict: View {
    var body: some View {
        HStack{
            Image("horror")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            
            VStack(alignment: .leading) {
                Text("Kdrama Addict")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                
                    
                HStack {
                    Text("Horror")
                        .font(.system(size: 12))
                        .frame(width: 68, height: 28)
                        .buttonStyle(.bordered)
                        .background(Color.myBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                    Text("Comedy")
                        .font(.system(size: 12))
                        .frame(width: 68, height: 28)
                        .buttonStyle(.bordered)
                        .background(Color.myBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.leadinghalf.filled")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -2)
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.system(size: 14))
                        .padding(.top, 2.0)
                }
            }
            .padding(.leading, 4)
            
                
            Spacer()
            
            Image(systemName: "chevron.right")
                .padding(.trailing, 8)

        }
        .padding()
        .background(.white)
        .cornerRadius(10)
    }
}

struct SuzyAddict: View {
    var body: some View {
        HStack{
            Image("suzy")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            
            VStack(alignment: .leading) {
                Text("Suzy Addict")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.leading)
                    
                HStack {
                    Text("Suzy")
                        .font(.system(size: 12))
                        .frame(width: 68, height: 28)
                        .buttonStyle(.bordered)
                        .background(Color.myBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -5)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.leadinghalf.filled")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .padding(.trailing, -2)
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.system(size: 14))
                        .padding(.top, 2.0)
                }
            }
            .padding(.leading, 4)
                
            Spacer()
            
            Image(systemName: "chevron.right")
                .padding(.trailing, 8)

        }
        .padding()
        .background(.white)
        .cornerRadius(10)
    }
}


struct CommunityList_Previews: PreviewProvider {
    static var previews: some View {
        CommunityList()
    }
}
