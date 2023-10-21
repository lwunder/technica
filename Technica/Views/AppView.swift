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
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AddReceiptView()
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("Add Receipt")
                }
            PaymentView()
                .tabItem {
                    Image(systemName: "arrow.2.squarepath")
                    Text("Pay")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
