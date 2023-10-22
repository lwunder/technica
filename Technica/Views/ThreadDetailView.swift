//
//  ThreadDetailView.swift
//  Technica
//
//  Created by Alice Hong on 10/22/23.
//

import SwiftUI

struct ThreadDetailView: View {
    
    @State var name: String
    @State var text_message: String = ""
    
    var body: some View {
        VStack {
            Text(name)
                .font(.title)
                .bold()
                .padding()
            Spacer()
            ZStack {
                Text("Bought you cake!")
                    .padding(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(Color.gray)
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.leading)
            Spacer()
            
            HStack {
                Image("ThreadPhoto")
                    .frame(maxWidth: 50, maxHeight: 50, alignment: .leading)
                    .padding()
                Spacer()
            }
            Spacer()
            
            
            Text("Thanks! I'll treat you next time")
                .padding(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.gray)
                )
                .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
            Spacer()
            Spacer()
            
            HStack {
                TextField("Enter message...", text: $text_message)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(Color.gray)
                    )
            }
            .padding()
        }
    }
}

struct ThreadDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadDetailView(name: "Sherry")
    }
}
