//
//  RegisterPopUp.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 07/04/23.
//

import SwiftUI

struct RegisterPopUp: View {
    var body: some View {
        VStack (spacing: .zero) {
                    title
                    content
                    button
                    
                }.padding()
                    .multilineTextAlignment(.center)
                    .background(.white)
    }
}

struct RegisterPopUp_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPopUp()
    }
}

private extension RegisterPopUp {
           
    var title: some View {
    Text ("Create Account")

    .font (
    .system(size: 30,
    weight: .bold,
    design: .rounded)
    )
 
    .padding ()
    }
    
    var content: some View {
    Text ("You can change your preferences on your profile.")
    .font (.callout)
    .foregroundColor(.black.opacity(0.8))
          }
    
    var button: some View {
        
        Text("Create Account").padding()
    }
          
}
