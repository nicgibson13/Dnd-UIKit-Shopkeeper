//
//  shopItem.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 12/10/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import Foundation

struct shopItem: Decodable {
    var name: String
    var type: String
    var description: String
    var price: Int
    var currencyType: String
    var rarity: String
    var requiresAttunement: Bool?
    
    init(name: String, type: String, description: String, price: Int, currencyType: String, rarity: String) {
        self.name = name
        self.type = type
        self.description = description
        self.price = price
        self.currencyType = currencyType
        self.rarity = rarity
    }
}

extension shopItem: Equatable {
    static func == (lhs: shopItem, rhs: shopItem) -> Bool {
        return
            lhs.name == rhs.name &&
            lhs.description == rhs.description
    }
}
