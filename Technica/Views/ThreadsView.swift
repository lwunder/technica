//
//  ThreadsView.swift
//  Technica
//
//  Created by Alice Hong on 10/22/23.
//

import SwiftUI

struct ThreadsView: View {
    
    var body: some View {
        VStack {
            
            NavigationView {
                List {
                    NavigationLink(
                        destination: AddReceiptView(),
                        label: {
                            Text("Sherry")
                        }
                    )
                    NavigationLink(
                        destination: AddReceiptView(),
                        label: {
                            Text("Alice")
                        }
                    )
                    NavigationLink(
                        destination: AddReceiptView(),
                        label: {
                            Image(systemName: "plus")
                            Text("Create Thread")
                        }
                    )
                }
            }
            .navigationBarTitle("Threads")
        }
    }
}

struct ThreadsView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadsView()
    }
}
