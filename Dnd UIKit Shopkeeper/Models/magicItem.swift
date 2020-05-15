//
//  magicItem.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 11/14/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import Foundation

struct topLevelJSON: Decodable {
    var results: [magicItem]
}

struct magicItem: Decodable {
    private enum CodingKeys: String, CodingKey {
        case name
        case type
        case description = "desc"
        case rarity
        case attunement = "requires_attunement"
        case price
    }
    
    var name: String
    var type: String
    var description: String
    var rarity: String
    var attunement: String?
    var price: Int
    
    init(name: String, type: String, desc: String, rarity: String, requires_attunement: String, price: Int) {
        self.name = name
        self.type = type
        self.description = desc
        self.rarity = rarity
        self.attunement = requires_attunement
        self.price = price
    }
}
