//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

//class ShoppingList {
//    let imageName: String
//    let itemName: String
//    let quantity: Int
//
//    init(shop_image: String, shop_item: String, shop_number: Int) {
//        self.imageName = shop_image
//        self.itemName = shop_item
//        self.quantity = shop_number
//    }
//}

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int

    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
    
}

struct ContentView: View {
    
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Shopping List")) {
                    ForEach(list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity).navigationTitle("Shopping List")
                    }
                }
            }
        }
    }
}
