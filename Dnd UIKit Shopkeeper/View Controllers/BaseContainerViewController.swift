//
//  BaseContainerViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/16/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//


import UIKit

protocol SideSelectionDelegate {
    func didTapButton(controller: UIViewController)
}

class BaseContainerViewController: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!
    
    @IBOutlet weak var bigStackView: UIStackView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var dashboardStackView: UIStackView!
    @IBOutlet weak var storesStackView: UIStackView!
    @IBOutlet weak var itemsStackView: UIStackView!
    @IBOutlet weak var accountStackView: UIStackView!
    @IBOutlet weak var settingsStackView: UIStackView!
    @IBOutlet weak var notesStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        dashboardStackView.addBackground(color: UIColor.MainColors.Midnight)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        createGradient()
    }
    
    @IBAction func dashboardButtonTapped(_ sender: Any) {
        selectionDelegate.didTapButton(controller: WelcomeViewController())
    }
    
    @IBAction func shopItemTapped(_ sender: Any) {
        selectionDelegate.didTapButton(controller: ViewController())
    }
    
    func createGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.MainColors.DarkBlue.cgColor, UIColor.MainColors.Midnight.cgColor]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func setupUI () {
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.backgroundColor = UIColor.white
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        profileImageView.contentMode = .scaleAspectFill
        bigStackView.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        bigStackView.isLayoutMarginsRelativeArrangement = true
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
