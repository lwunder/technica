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
            ForEach(favors, id: \.self) { favor in
                ZStack {
                    Text("FriendX \(favor)!")
                        .padding(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.gray)
                        )
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(favors: ["walked your dog", "watered your plant"])
    }
}
