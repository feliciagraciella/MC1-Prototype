//
//  SeeMoreCommunity.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 07/04/23.
//

import SwiftUI

struct SeeMoreCommunity: View {
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
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                    CommunityCard()
                }
                .padding(.horizontal)
            }
        }
        .background(Color.ListBG)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SeeMoreCommunity_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreCommunity()
    }
}
