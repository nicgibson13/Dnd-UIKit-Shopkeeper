//
//  ViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 11/14/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuVisible: Bool = false
    var typeOfShop: String?
    var sizeOfTown: String?
    var numberOfCommonItems: Int = BlacksmithController.sharedInstance.c
    var numberOfUncommonItems: Int = BlacksmithController.sharedInstance.u
    var numberOfRareItems: Int = BlacksmithController.sharedInstance.r
    var numberOfVeryRareItems: Int = BlacksmithController.sharedInstance.v
    var numberOfLegendaryItems: Int = BlacksmithController.sharedInstance.l
    
    
    @IBOutlet weak var shopTitleButton: UIButton!
    @IBOutlet weak var generateShopkeeperButton: UIButton!
    
    @IBOutlet weak var itemTableView: UITableView!
    @IBOutlet weak var inflationSlider: UISlider!
    @IBOutlet weak var inflationLabel: UILabel!
    @IBOutlet weak var shopkeeperImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var raceLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var eyesLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var mannerismsLabel: UILabel!
    @IBOutlet weak var slideOutMenuView: UIView!
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    @IBOutlet weak var hamburgerButton: UIBarButtonItem!
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
        header.textLabel?.font = UIFont(name: "Din Condensed", size: 22)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if magicItemController.sharedInstance.typeOfShop == "Blacksmith" {
            if section == 0 {
                return Blacksmith.sharedInstance.numberOfLightArmor
            }
            if section == 1 {
                return Blacksmith.sharedInstance.numberOfMediumArmor
            }
            if section == 2 {
                return Blacksmith.sharedInstance.numberOfHeavyArmor
            }
            if section == 3 {
                return Blacksmith.sharedInstance.numberOfShields
            }
            if section == 4 {
                return Blacksmith.sharedInstance.numberOfSimpleMeleeWeapons
            }
            if section == 5 {
                return Blacksmith.sharedInstance.numberOfMartialMeleeWeapons
            } else {
                calculateNumberOfItems()
                let x = BlacksmithController.sharedInstance
                return (x.c + x.u + x.r + x.v + x.l)
            }
        }
        return magicItemController.sharedInstance.shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = itemTableView.dequeueReusableCell(withIdentifier: "itemCell") as? ItemTableViewCell else {return UITableViewCell()}
        if typeOfShop == "Blacksmith" {
            
            var currentIndex = 0
            var sumSections = 0;
            
            for index in 0..<indexPath.section {
                let rowsInSection = tableView.numberOfRows(inSection: index)
                sumSections += rowsInSection
            }
            currentIndex = sumSections + indexPath.row;
            
            let item = Blacksmith.sharedInstance.blacksmithItems[currentIndex]
            cell.nameLabel.text = item.name
            cell.typeLabel.text = item.type
            let inflation = (Float(inflationSlider.value) / 100)
            let itemPrice = (Float(item.price) * (1 + inflation))
            cell.priceLabel.text = "\(round(itemPrice * 10) / 10) \(item.currencyType)"
            cell.rarityLabel.text = item.rarity
            return cell
        } else {
            let item = magicItemController.sharedInstance.shopItems[indexPath.row]
            cell.nameLabel.text = item.name
            cell.typeLabel.text = item.type
            let inflation = (Float(inflationSlider.value) / 100)
            let itemPrice = (Float(item.price) * (1 + inflation))
            cell.priceLabel.text = "\(round(itemPrice * 10) / 10) \(item.currencyType)"
            cell.rarityLabel.text = item.rarity
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if magicItemController.sharedInstance.typeOfShop == "Blacksmith" {
            return Blacksmith.sharedInstance.itemTypes.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if magicItemController.sharedInstance.typeOfShop == "Blacksmith" {
            return Blacksmith.sharedInstance.itemTypes[section]
        } else {
            return nil
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shopTitleButton.setTitle("\(typeOfShop!)", for: .normal)
        itemTableView.delegate = self
        itemTableView.dataSource = self
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
        
        generateShopkeeperButton.layer.borderWidth = 1
        generateShopkeeperButton.layer.borderColor = UIColor.white.cgColor
        generateShopkeeperButton.layer.cornerRadius = generateShopkeeperButton.frame.height / 2
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func inflationSliderMoved(_ sender: UISlider) {
        let current = Int(sender.value)
        inflationLabel.text = "\(current)%"
        
        DispatchQueue.main.async {
            self.itemTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toItemInfoVC", sender: self)
        // MARK: - BRING UP NEW VC
    }
    
    @IBAction func hamburgerButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func shopkeeperButtonTapped(_ sender: Any) {
        let SI = Characteristics.sharedInstance
        let race = SI.races.randomElement()!
        raceLabel.text = "Race: \(race)"
        let gender = SI.gender.randomElement()!
        genderLabel.text = "Gender: \(gender.capitalized)"
        hairLabel.text = "Hair Color: \(SI.hairColor.randomElement()!)"
        eyesLabel.text = "Eye Color: \(SI.eyeColor.randomElement()!)"
        mannerismsLabel.text = "Mannerisms: \(SI.mannerisms.randomElement()!)"
        shopkeeperImage.image = UIImage(named: "\(gender)\(race)")
        let name = retrieveName(name: "\(gender)\(race)")
        nameLabel.text = "Name: \(name)"
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
    }
    
    func retrieveName(name: String) -> String {
        let charNames = Names.sharedInstance
        if name == "maleHuman" {
            return charNames.maleHuman.randomElement()!
        } else if name == "femaleHuman" {
            return charNames.femaleHuman.randomElement()!
        } else if name == "maleElf" {
            return charNames.maleElf.randomElement()!
        } else if name == "femaleElf" {
            return charNames.femaleElf.randomElement()!
        } else if name == "maleDwarf" {
            return charNames.maleDwarf.randomElement()!
        } else if name == "femaleDwarf" {
            return charNames.femaleDwarf.randomElement()!
        } else if name == "maleGoliath" {
            return charNames.maleGoliath.randomElement()!
        } else if name == "femaleGoliath" {
            return charNames.femaleGoliath.randomElement()!
        } else if name == "maleDragonborn" {
            return charNames.maleDragonborn.randomElement()!
        } else if name == "femaleDragonborn" {
            return charNames.maleDragonborn.randomElement()!
        } else if name == "maleGnome" {
            return charNames.maleGnome.randomElement()!
        } else if name == "femaleGnome" {
            return charNames.femaleGnome.randomElement()!
        } else if name == "maleGenasi" {
            return charNames.maleGenasi.randomElement()!
        } else if name == "femaleGenasi" {
            return charNames.femaleGenasi.randomElement()!
        } else if name == "maleTiefling" {
            return charNames.maleTiefling.randomElement()!
        } else if name == "femaleTiefling" {
            return charNames.femaleTiefling.randomElement()!
        } else if name == "maleHalfling" {
            return charNames.maleHalfling.randomElement()!
        } else {
            return charNames.femaleHalfling.randomElement()!
        }
    }
    
    @objc func toggleMenu() {
        if menuVisible {
            self.sideMenuConstraint.constant = -240
            DispatchQueue.main.async {
                self.itemTableView.reloadData()
                self.hamburgerButton.tintColor = .white
            }
        } else {
            sideMenuConstraint.constant = 0
            hamburgerButton.tintColor = .white
            slideOutMenuView.isHidden = false
            DispatchQueue.main.async {
                self.hamburgerButton.tintColor = .black
            }
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        menuVisible = !menuVisible
    }
    
    func calculateNumberOfItems() {
        let x = BlacksmithController.sharedInstance
        if x.c > 4 {
            x.c = 4
        }
        if x.u > 5 {
            x.u = 5
        }
        if x.r < 0 {
            x.r = 0
        }
        if x.v < 0 {
            x.v = 0
        }
        if x.l < 0 {
            x.l = 0
        }
        
        if numberOfCommonItems > 4 {
            numberOfCommonItems = 4
        }
        if numberOfUncommonItems > 5 {
            numberOfUncommonItems = 5
        }
        if numberOfRareItems < 0 {
            numberOfRareItems = 0
        }
        if numberOfVeryRareItems < 0 {
            numberOfVeryRareItems = 0
        }
        if numberOfLegendaryItems < 0 {
            numberOfLegendaryItems = 0
        }
        addMagicItems()
    }
    
    func addMagicItems() {
        if typeOfShop == "Blacksmith" {
            while numberOfCommonItems > 0 && Blacksmith.sharedInstance.commonBlacksmithItems.count > 0 {
                guard let item = Blacksmith.sharedInstance.commonBlacksmithItems.randomElement() else {return}
                Blacksmith.sharedInstance.blacksmithItems.append(item)
                Blacksmith.sharedInstance.commonBlacksmithItems = BlacksmithController.sharedInstance.removeItem(item: item, array: Blacksmith.sharedInstance.commonBlacksmithItems)!
                numberOfCommonItems -= 1
            }
            while numberOfUncommonItems > 0 && Blacksmith.sharedInstance.uncommonBlacksmithItems.count > 0 {
                guard let item = Blacksmith.sharedInstance.uncommonBlacksmithItems.randomElement() else {return}
                Blacksmith.sharedInstance.blacksmithItems.append(item)
                Blacksmith.sharedInstance.uncommonBlacksmithItems =
                    BlacksmithController.sharedInstance.removeItem(item: item, array: Blacksmith.sharedInstance.uncommonBlacksmithItems)!
                numberOfUncommonItems -= 1
            }
            while numberOfRareItems > 0 && Blacksmith.sharedInstance.rareBlacksmithItems.count > 0 {
                guard let item = Blacksmith.sharedInstance.rareBlacksmithItems.randomElement() else {return}
                Blacksmith.sharedInstance.blacksmithItems.append(item)
                Blacksmith.sharedInstance.rareBlacksmithItems =
                    BlacksmithController.sharedInstance.removeItem(item: item, array: Blacksmith.sharedInstance.rareBlacksmithItems)!
                numberOfRareItems -= 1
            }
            while numberOfVeryRareItems > 0 {
                guard let item = Blacksmith.sharedInstance.veryRareBlacksmithItems.randomElement() else {return}
                Blacksmith.sharedInstance.blacksmithItems.append(item)
                Blacksmith.sharedInstance.veryRareBlacksmithItems =
                    BlacksmithController.sharedInstance.removeItem(item: item, array: Blacksmith.sharedInstance.veryRareBlacksmithItems)!
                numberOfVeryRareItems -= 1
            }
            while numberOfLegendaryItems > 0 && Blacksmith.sharedInstance.legendaryBlacksmithItems.count > 0 {
                guard let item = Blacksmith.sharedInstance.legendaryBlacksmithItems.randomElement() else {return}
                Blacksmith.sharedInstance.blacksmithItems.append(item)
                Blacksmith.sharedInstance.legendaryBlacksmithItems =
                    BlacksmithController.sharedInstance.removeItem(item: item, array: Blacksmith.sharedInstance.legendaryBlacksmithItems)!
                numberOfLegendaryItems -= 1
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toItemInfoVC" {
            if typeOfShop == "Blacksmith" {
                let indexPath = itemTableView.indexPathForSelectedRow
                var currentIndex = 0
                var sumSections = 0;
                for index in 0..<indexPath!.section {
                    let rowsInSection = itemTableView.numberOfRows(inSection: index)
                    sumSections += rowsInSection
                }
                currentIndex = sumSections + indexPath!.row;
                let item = Blacksmith.sharedInstance.blacksmithItems[currentIndex]
                let destVC = segue.destination as! ItemInfoViewController
                destVC.shopType = typeOfShop
                destVC.shopItem = item
            }
            else {
                let indexPath = itemTableView.indexPathForSelectedRow
                var currentIndex = 0
                var sumSections = 0;
                for index in 0..<indexPath!.section {
                    let rowsInSection = itemTableView.numberOfRows(inSection: index)
                    sumSections += rowsInSection
                }
                currentIndex = sumSections + indexPath!.row;
                let item = magicItemController.sharedInstance.shopItems[currentIndex]
                let destVC = segue.destination as! ItemInfoViewController
                destVC.shopItem = item
                destVC.shopType = typeOfShop
            }
        }
    }
}
