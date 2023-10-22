//
//  User.swift
//  Technica
//
//  Created by Alice Hong on 10/22/23.
//

import Foundation

class User: Identifiable {
    var id: UUID
    var name: String
    var email_address: String?
    var friends: [User]
    var receipts: [Receipt]
    
    init(id: UUID = UUID(), name: String, email_address: String? = nil) {
        self.id = id
        self.name = name
        self.email_address = email_address
//        self.friends = [User]()
        self.friends = [User(name: "Alice"), User(name: "Gloria"), User(name: "Sherry")] // initialize default friends
        self.receipts = [Receipt]()
    }
    
    func createReceipt() -> Receipt {
        var new_receipt = Receipt()
        self.receipts.append(new_receipt)
        return new_receipt
    }
    
    func addFriend(friend: User) {
        self.friends.append(friend)
    }
}
