//
//  HomeView.swift
//  Technica
//
//  Created by Alice Hong on 10/21/23.
//

import SwiftUI

struct HomeView: View {
    @State var favors = [String]()
    var body: some View {
        VStack {
            Text("Home")
                .font(.title)
                .bold()
                .padding()
            Spacer()
            ForEach(favors, id: \.self) { favor in
                ZStack {
                    Text("FriendX \(favor)!")
                        .padding(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.gray)
                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.leading)
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(favors: ["walked your dog", "watered your plant"])
    }
}
