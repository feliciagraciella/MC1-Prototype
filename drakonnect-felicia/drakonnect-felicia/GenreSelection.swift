//
//  GenreSelection.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 04/04/23.
//

import SwiftUI

struct GenreList: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var searchTerm = ""
    
    @State var items: [String] = ["Romance", "Sageuks", "Legal", "Melodrama", "School-based", "Sci-fi", "Medical", "Psychological", "Mystery", "Comedy", "Thriller", "Horror", "Sports", "Musical", ]
    @State var selections: [String] = []
    
    var results: [String] {
        searchTerm.isEmpty ? items : items.filter { $0.contains(searchTerm) }
    }

    var body: some View {
        List {
            ForEach(results, id: \.self) { item in
                GenreSelection(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                }
            }
        }
        .environment(\.defaultMinListRowHeight, 52)
        .foregroundColor(.black)
        .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always))
        .navigationTitle("Select Genres")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Button(action : {
                    self.presentationMode.wrappedValue.dismiss() }){
                        Image(systemName: "chevron.backward")
                            .fontWeight(.semibold)
                        Text("Back")
                            .padding(.leading, -1.0)
                    }
            }
            ToolbarItem(placement: .navigationBarTrailing){
                NavigationLink(destination: ActorList()) {
                    Text("Next")
                }
            }
        }
    }
}

struct GenreSelection: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark.circle.fill" ).foregroundColor(Color.myBlue)
                }
                else {
                    Spacer()
                    Image(systemName: "checkmark.circle").foregroundColor(Color.ListBG)
                }
            }
        }
    }
}

struct GenreSelection_Previews: PreviewProvider {
    static var previews: some View {
        GenreList()
    }
}


