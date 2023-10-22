//
//  AddReceiptView.swift
//  Technica
//
//  Created by Alice Hong on 10/21/23.
//

import SwiftUI

struct AddReceiptView: View {
    var body: some View {
        VStack {
            Text("Add Receipt")
                .font(.title)
                .bold()
                .padding()
            
            List {
                NavigationLink(
                    destination: ReceiptUploadView(),
                    label: {
                        Text("Upload a photo of the receipt")
                    }
                )
                
                NavigationLink(
                    destination: AmountUploadView(),
                    label: {
                        Text("Input amount owed")
                    }
                )
            }
        }
    }
}

struct AddReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        AddReceiptView()
    }
}
