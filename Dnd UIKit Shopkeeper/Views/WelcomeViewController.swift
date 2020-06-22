//
//  WelcomeViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 12/16/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

protocol GetStartedButtonTapped {
    func presentNext(controller: UIViewController)
}

class WelcomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var getStartedProtocol: GetStartedButtonTapped!
    
    @IBOutlet weak var shopTypePickerView: UIPickerView!
    @IBOutlet weak var townSizePickerView: UIPickerView!
    @IBOutlet weak var getStartedButton: UIButton!
    
    var shopType: String = "Blacksmith"
    var townSize: String = "Village"
    
    let townSizePickerData = [
       "Village", "Small Town", "Large Town", "Small City", "Large City"
    ]
    
    let shopTypePickerData = [
        "Blacksmith", "General Store"
        // "Leatherworker", "Temple/Faith Supplies", "Fletcher", "Adventuring Supplies", "Jeweler", "Tailor", "Potion Shop", "Arcane Shop"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        townSizePickerView.dataSource = self
        townSizePickerView.delegate = self
        shopTypePickerView.dataSource = self
        shopTypePickerView.delegate = self
        getStartedButton.layer.borderWidth = 1
        getStartedButton.layer.borderColor = UIColor.white.cgColor
        getStartedButton.layer.cornerRadius = (getStartedButton.frame.height) / 2
        self.view.backgroundColor = .clear
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if pickerView == townSizePickerView {
            return NSAttributedString(string: townSizePickerData[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        } else {
            return NSAttributedString(string: shopTypePickerData[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == townSizePickerView {
            return townSizePickerData[row]
        } else {
            return shopTypePickerData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == shopTypePickerView {
            shopType = shopTypePickerData[row]
            magicItemController.sharedInstance.typeOfShop = shopTypePickerData[row]
        } else {
            townSize = townSizePickerData[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == townSizePickerView {
            return 5
        } else {
            return 2
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVC" {
            guard let destinationVC = segue.destination as? ViewController else { return }
            destinationVC.typeOfShop = shopType
            destinationVC.sizeOfTown = townSize
        }
    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func getStartedButtonTapped(_ sender: Any) {
        let x = BlacksmithController.sharedInstance
        if townSize == "Village" {
            x.c = roll(numberOfDice: 1, typeOfDice: 2, SubtractedNumber: 1)
            x.u = roll(numberOfDice: 1, typeOfDice: 8, SubtractedNumber: 7)
        } else if townSize == "Small Town" {
            x.c = roll(numberOfDice: 1, typeOfDice: 2, SubtractedNumber: 0)
            x.u = roll(numberOfDice: 1, typeOfDice: 4, SubtractedNumber: 1)
            x.r = roll(numberOfDice: 1, typeOfDice: 12, SubtractedNumber: 11)
        } else if townSize == "Large Town" {
            x.c = roll(numberOfDice: 1, typeOfDice: 8, SubtractedNumber: 0)
            x.u = roll(numberOfDice: 1, typeOfDice: 6, SubtractedNumber: 0)
            x.r = roll(numberOfDice: 1, typeOfDice: 2, SubtractedNumber: 1)
            x.v = roll(numberOfDice: 1, typeOfDice: 4, SubtractedNumber: 3)
            x.l = roll(numberOfDice: 1, typeOfDice: 100, SubtractedNumber: 99)
        } else if townSize == "Small City" {
            x.c = roll(numberOfDice: 1, typeOfDice: 10, SubtractedNumber: 0)
            x.u = roll(numberOfDice: 2, typeOfDice: 4, SubtractedNumber: 0)
            x.r = roll(numberOfDice: 1, typeOfDice: 4, SubtractedNumber: 0)
            x.v = roll(numberOfDice: 1, typeOfDice: 3, SubtractedNumber: 2)
            x.l = roll(numberOfDice: 1, typeOfDice: 50, SubtractedNumber: 49)
        } else {
            x.c = roll(numberOfDice: 3, typeOfDice: 4, SubtractedNumber: 0)
            x.u = roll(numberOfDice: 1, typeOfDice: 8, SubtractedNumber: -4)
            x.r = roll(numberOfDice: 1, typeOfDice: 8, SubtractedNumber: -2)
            x.v = roll(numberOfDice: 1, typeOfDice: 3, SubtractedNumber: 1)
            x.l = roll(numberOfDice: 1, typeOfDice: 20, SubtractedNumber: 19)
        }
//        if x.c > 4 {
//            x.c = 4
//        }
//        if x.u > 5 {
//            x.u = 5
//        }
        getStartedProtocol.presentNext(controller: ViewController())
    }
    
    func roll(numberOfDice: Int, typeOfDice: Int, SubtractedNumber: Int) -> Int {
        var total: Int = 0
        var numOfDice = numberOfDice
        while numOfDice > 0 {
            let r = (1...typeOfDice).randomElement()!
            total += r
            numOfDice -= 1
        }
        total -= SubtractedNumber
        if total < 0 {
            total = 0
        }
        return total
    }
}

