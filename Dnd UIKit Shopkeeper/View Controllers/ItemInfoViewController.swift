//
//  ItemInfoViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 12/19/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class ItemInfoViewController: UIViewController {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var rarityLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var attunementLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var shopItem: shopItem?
    var shopType: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapGestureRecognizer(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setup() {
        guard let item = self.shopItem,
            let shoptype = self.shopType else {return}
        
        self.priceLabel.text = "\(item.price)" + " " + "\(item.currencyType)"
        self.rarityLabel.text = item.rarity
        self.typeLabel.text = item.type
        self.descriptionLabel.text = item.description
        self.itemImageView.image = UIImage(named:"\(item.name)")
        if shoptype == "Blacksmith" {
            guard let _ = item.requiresAttunement else  {  self.attunementLabel.text = "Item does not require attunement."; return}
            self.attunementLabel.text = "Requires attunement."
        }
        attunementLabel.text = ""
    }
}
