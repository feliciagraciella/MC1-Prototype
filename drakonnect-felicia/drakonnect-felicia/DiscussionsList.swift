//
//  DiscussionsList.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 05/04/23.
//

import SwiftUI

struct DiscussionsList: View {
    @State private var isEditing = false
    @State private var text: String = ""
    @State var selectedValue = 0
    @State var addDis = false
    
//    enum Flavor: String, CaseIterable, Identifiable {
//        case chocolate, vanilla
//        var id: Self { self }
//    }
//
//    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        VStack(alignment: .leading){
//            Text("Discussions")
//                .font(.system(size: 34))
//                .fontWeight(.bold)
//                .padding(.top)
            
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $text).foregroundColor(.black)
                    }
                    .padding(12)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
//                    .padding(.horizontal, 16)
//                    .padding(.top, -12.0)
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
//                    .padding(.top, -12.0)
                    .transition(.move(edge: .trailing))
//                    .animation(.default)
                    }
            }
            
            Picker("segments", selection: $selectedValue) {
                    Text("All").tag(0)
                    Text("My Discussions").tag(1)
                }
                .pickerStyle(.segmented)
//                .padding(.top, 4)

            if (selectedValue == 0){
                    allDiscussion()
                }
            else if(selectedValue == 1){
                    myDiscussion()
                }
        }
        .navigationBarTitle("Discussion", displayMode: .inline)
        .padding(.horizontal)
        //        .navigationBarHidden(true)
        .background(Color.ListBG)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    addDis = true
                } label: {
                    Image(systemName: "plus")
                        .sheet(isPresented: $addDis, content: {
                            addDiscussion()
                    })
                }
            }
        }
        
        
//        VStack {
//            Picker("Flavor", selection: $selectedFlavor) {
//                    ForEach(Flavor.allCases) { flavor in
//                        Text(flavor.rawValue.capitalized)
//                    }
//                }.pickerStyle(.segmented)
//
//            discussionLiked()
//            discussionNoLiked()
//        }
//        .padding()
//        .navigationBarBackButtonHidden(true)
//        .edgesIgnoringSafeArea(.all)
//        .background(Color.ListBG)
    }

}

struct addDiscussion : View {
    @State private var isPresentingConfirm: Bool = false
    @Environment(\.dismiss) var dismissDis
    @State var discussion = ""
    
    var body: some View {
        VStack {
            HStack {
                Button("Close", role: .destructive) {
                    isPresentingConfirm = true
                }
                .confirmationDialog("Are you sure?",
                                    isPresented: $isPresentingConfirm) {
                    Button("Discard", role: .destructive) {
                        dismissDis() }
                } message: {
                    Text("Are you sure want to stop editing?")
                }
                
                Spacer()
                
                Text("Add Discussion")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: { dismissDis() }) {
                    Text("Create")
                        .foregroundColor(.blue)
                }
            }
            .padding()
            
            TextField("Add discussion", text: $discussion, axis: .vertical)
                .multilineTextAlignment(.leading)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary)
                )
                .background(.white)
                .cornerRadius(10)
                .lineLimit(8...8)
                .padding()
            
            Spacer()
        }
        .background(Color.ListBG)
    }
//        .navigationBarTitle("Add your discussion")
        
        
            
    }

struct allDiscussion: View {
    var body: some View{
        ScrollView(.vertical){
            VStack{
                discussionLiked()
                discussionNoLiked()
                discussionNoLiked()
                discussionNoLiked()
                discussionNoLiked()
            }
        }
    }
}

struct myDiscussion: View {
    var body: some View{
        ScrollView(.vertical){
            VStack{
                discussionLiked()
            }
        }
    }
}

struct DiscussionsList_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionsList()
    }
}
