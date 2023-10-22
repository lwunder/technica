//
//  AppView.swift
//  Technica
//
//  Created by Alice Hong on 10/21/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            HomeView(favors: ["did a favor", "did another favor"])
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ThreadsView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Threads")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
