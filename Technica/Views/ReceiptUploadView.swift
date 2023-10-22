//
//  ReceiptUploadView.swift
//  Technica
//
//  Created by Alice Hong on 10/21/23.
//

import SwiftUI

struct ReceiptUploadView: View {
    @State var receipt = ""
    var body: some View {
        Form {
            TextField("Add photo", text: $receipt)
                .keyboardType(.numberPad)
                
            NavigationLink(destination: AmountUploadView()) {
                Button(action: {
                    print("Navigating to other page...")
                }) {
                    Text("Next")
                }
            }
        }
    }
}

struct ReceiptUploadView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptUploadView()
    }
}
