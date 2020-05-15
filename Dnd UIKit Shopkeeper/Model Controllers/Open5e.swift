//
//  Open5e.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 11/14/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import Foundation


class Open5e {
    
    static let baseURL: String = "https://api.open5e.com/magicitems/"
    
    static func retrieveMagicItems(num: Int, completion: @escaping(Bool) -> Void) {
        guard let url = URL(string: baseURL) else {completion(false);return}
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        if num != 1 {
            let query = URLQueryItem(name: "page", value: String(num))
            components?.queryItems = [query]
        }
        
        guard let finalURL = components?.url else {completion(false);return}
        
        URLSession.shared.dataTask(with: finalURL) { (data, _, error) in
            if let error = error {
                print("There was an error in \(#function) : \(error) : \(error.localizedDescription)")
                completion(false);return
            }
            guard let data = data else {
                print("error getting data")
                completion(false);return
            }
            
            do {
                let decoder = JSONDecoder()
                let topLevelJson = try decoder.decode(topLevelJSON.self, from: data)
                for magicItem in topLevelJson.results {
//                    if magicItem.rarity == "uncommon" {
//                        magicItemController.sharedInstance.uncommonMagicItems.append(magicItem)
//                    } else if magicItem.rarity == "rare" {
//                        magicItemController.sharedInstance.rareMagicItems.append(magicItem)
//                    } else if magicItem.rarity == "very rare" {
//                        magicItemController.sharedInstance.veryRareMagicItems.append(magicItem)
//                    } else if magicItem.rarity == "legendary" {
//                        magicItemController.sharedInstance.legendaryMagicItems.append(magicItem)
//                    } else if magicItem.rarity == "artifact" {
//                        magicItemController.sharedInstance.artifacts.append(magicItem)
//                    } else {
//                        magicItemController.sharedInstance.magicItems.append(magicItem)
//                    }
//                    magicItemController.sharedInstance.usedMagicItems.append(magicItem)
                    completion(true)
                }
            } catch {
                print("Error decoding data")
            }
        } .resume()
    }
}

