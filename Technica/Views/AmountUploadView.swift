//
//  AmountUploadView.swift
//  Technica
//
//  Created by Alice Hong on 10/21/23.
//

import SwiftUI

struct AmountUploadView: View {
    
    @State var amount = ""
    
    var body: some View {
        Form {
            TextField("Enter amount", text: $amount)
                .keyboardType(.numberPad)
            NavigationLink(destination: AddReceiptView().navigationBarBackButtonHidden(true)) {
                Button("Add amount") {
                  print("\($amount) added.")
                }
            }
        }
    }
}

struct AmountUploadView_Previews: PreviewProvider {
    static var previews: some View {
        AmountUploadView()
    }
}
