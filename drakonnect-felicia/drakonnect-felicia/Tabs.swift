//
//  Tabs.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 05/04/23.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        NavigationView{
            TabView {
                CommunityList()
                    .tabItem {
                        Label("Community", systemImage: "person.3.fill")
                    }
                UserProfile()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
            }
        }
        
        .toolbarBackground(Color.ListBG, for: .tabBar)
//        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
//        .background(Color.ListBG)
        
    }
        
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
