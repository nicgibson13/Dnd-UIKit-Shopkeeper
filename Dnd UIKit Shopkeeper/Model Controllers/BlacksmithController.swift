//
//  BlacksmithController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 12/19/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import Foundation

class BlacksmithController {
    
    static let sharedInstance = BlacksmithController()
    
    var itemSelected: shopItem?
    var c: Int = 0
    var u: Int = 0
    var r: Int = 0
    var v: Int = 0
    var l: Int = 0
    
    func removeItemFromBlacksmithItems(item: shopItem) {
        guard let index = Blacksmith.sharedInstance.blacksmithItems.firstIndex(where: {$0 == item}) else {return}
        Blacksmith.sharedInstance.blacksmithItems.remove(at: index)
    }
    
    func removeItem(item: shopItem, array: [shopItem]) -> [shopItem]? {
        var Array = array
        guard let index = array.firstIndex(where: {$0 == item}) else {return nil}
        Array.remove(at: index)
        return Array
    }
    
}
