//
//  Receipt.swift
//  Technica
//
//  Created by Alice Hong on 10/22/23.
//

import Foundation

class Receipt: Identifiable {
    var id: UUID
    var date_created: Date
    var items: [ReceiptItem]
    
    init() {
        self.id = UUID()
        self.date_created = Date()
        self.items = [ReceiptItem]()
    }
    
    func addItem(item: ReceiptItem) {
        self.items.append(item)
        self.calculateSplit()
    }
    
    func deleteItem(i: Int) {
        self.items.remove(at: i)
        self.calculateSplit()
    }
    
    func calculateSplit() {
        print("")
    }
}


class ReceiptItem {
    var description: String
    var amount: Float
    var assignees: [User]
    
    init(description: String, amount: Float) {
        self.description = description
        self.amount = amount
        self.assignees = [User]()
    }
    
    func addAssignees(assignees: [User]) {
        self.assignees.append(contentsOf: assignees)
    }
}
