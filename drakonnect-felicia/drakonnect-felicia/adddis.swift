//
//  adddis.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 11/04/23.
//

import SwiftUI

struct adddis: View {
    @Environment(\.dismiss) var dismiss
    @State var discussion = ""
    
    var body: some View {
        VStack {
            TextField("Add discussion", text: $discussion, axis: .vertical)
                .padding()
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary)
                        )
                .background(.white)
                .cornerRadius(10)
                .lineLimit(5...5)
                .padding()
        }
        .navigationBarItems(leading: Button("Close", action: {
            dismiss()
        }), trailing: Button("Create", action: {
            dismiss()
        }) )
//        .navigationBarTitle("Add your discussion")
        .background(Color.ListBG)
        
            
    }
}

struct adddis_Previews: PreviewProvider {
    static var previews: some View {
        adddis()
    }
}
