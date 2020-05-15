//
//  magicItemController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 11/14/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import Foundation

class magicItemController {
    
    static let sharedInstance = magicItemController()
    
    var numberOfCommonMagicItems: Int = 0
    var numberOfUncommonMagicItems: Int = 0
    var numberOfRareMagicItems: Int = 0
    var numberOfVeryRareMagicItems: Int = 0
    var numberOfLegendaryMagicItems: Int = 0
    var numberOfArtifacts: Int = 0
    var numberOfMagicItemsInShop = 0
    var typeOfShop: String = "Blacksmith"
    
    var shopItems: [shopItem] =
        [
            shopItem(name: "Potion of Healing", type: "Potion", description: "You regain 2d4 + 2 Hit Points when you drink this potion. The potion's red liquid glimmers when agitated.", price: 50, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Potion of Greater Healing", type: "Potion", description: "You regain 4d4 + 2 Hit Points when you drink this potion. The potion's red liquid glimmers when agitated.", price: 200, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Torch", type: "Adventuring Gear", description: "An unlit torch", price: 1, currencyType: "CP", rarity: "Common"),
            shopItem(name: "Rations", type: "Food", description: "One day's rations", price: 5, currencyType: "SP", rarity: "Common"),
            shopItem(name: "Lamp", type: "Adventuring Gear", description: "A candleless lamp", price: 5, currencyType: "SP", rarity: "Common"),
            shopItem(name: "Hooded Lantern", type: "Adventuring Gear", description: "A shielded light source", price: 5, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Common Clothes", type: "Clothing", description: "Clothes of the every day commoner", price: 5, currencyType: "SP", rarity: "Common"),
            shopItem(name: "Fine Clothes", type: "Clothing", description: "Clothes fit for a noble", price: 15, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Hempen Rope", type: "Adventuring Gear", description: "50 feet of hempen rope", price: 1, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Backpack", type: "Adventuring Gear", description: "A bag for items to be placed in", price: 2, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Dagger", type: "Weapon", description: "A  small blade", price: 2, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Tinderbox", type: "Adventuring Gear", description: "A useful tool for creating fire", price: 5, currencyType: "CP", rarity: "Common"),
            shopItem(name: "Paper (one sheet)", type: "Adventuring Gear", description: "One sheet of paper", price: 2, currencyType: "SP", rarity: "Common"),
            shopItem(name: "Blowgun Needles (50)", type: "Ammunition", description: "50 projectiles for a blowgun", price: 1, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Painter's Supplies", type: "Artisan Supplies", description: "Tools used to paint, including the paint itself.", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Sprig of Mistletoe", type: "Divine Gear", description: "A sprig of mistetoe!", price: 1, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Flute", type: "Musical Instrument", description: "A simply designed flute.", price: 2, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Tinker's Tools", type: "Artisan Supplies", description: "These special tools include the items needed to pursue a craft or trade.", price: 50, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Acid (vial)", type: "Alchemical Supplies", description: "As an action, you can splash the contents of this vial onto a creature within 5 feet of you or throw the vial up to 20 feet, shattering it on impact. In either case, make a ranged attack against a creature or object, treating the acid as an improvised weapon. On a hit, the target takes 2d6 acid damage", price: 25, currencyType: "GP", rarity: "Common")
    ]
    
    var shopTypes: [String] =
        [
        "Blacksmith", "Fletcher", "Leatherworker", "Temple/Faith Supplies", "General Store", "Adventuring Supplies", "Jeweler", "Tailor", "Potion Shop", "Arcane Shop"
        ]
    
    
    
}


