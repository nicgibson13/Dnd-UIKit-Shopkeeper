//
//  DashboardViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/23/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var favoriteShopView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteShopView.layer.borderWidth = 0.75
        favoriteShopView.layer.borderColor = UIColor.white.cgColor
        favoriteShopView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
