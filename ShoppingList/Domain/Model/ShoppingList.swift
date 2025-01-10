import Foundation

struct ShoppingList {
    var name: String
    var items: [ShoppingItem]
    let createdAt: Date


    mutating func add(item: ShoppingItem) {
        items.append(item)
    }

    mutating func delete(name: String) {
        items.removeAll { $0.name == name }
    }
}
