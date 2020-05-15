//
//  ContainerViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 12/10/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == townSizePickerView {
            return townSizePickerData[row]
        } else {
            return shopTypePickerData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == townSizePickerView {
            return 5
        } else {
            return 2
        }
    }
    
    @IBOutlet weak var menuTitleLabel: UILabel!
    @IBOutlet weak var townSizeLabel: UILabel!
    @IBOutlet weak var townSizePickerView: UIPickerView!
    @IBOutlet weak var shopTypeLabel: UILabel!
    @IBOutlet weak var shopTypePickerView: UIPickerView!
    
    var townSizePickerData : [String] = [String]()
    var shopTypePickerData : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        townSizePickerView.dataSource = self
        townSizePickerView.delegate = self
        shopTypePickerView.dataSource = self
        shopTypePickerView.delegate = self
                
    townSizePickerData = [
        "Village", "Small Town", "Large Town", "Small City", "Large City"
        ]
    
    shopTypePickerData = [
        "Blacksmith", "General Store"
        
        //, "Leatherworker", "Temple/Faith", "Fletcher", "Supplies", , "Adventuring Supplies", "Jeweler", "Tailor", "Potion Shop", "Arcane Shop"
        ]
        
    }
    
}
