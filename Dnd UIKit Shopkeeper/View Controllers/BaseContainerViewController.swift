//
//  BaseContainerViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/16/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//


import UIKit

class BaseContainerViewController: UIViewController {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.backgroundColor = UIColor.white
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        profileImageView.contentMode = .scaleAspectFill
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        createGradient()
    }
    
    func createGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.MainColors.DarkBlue.cgColor, UIColor.MainColors.Midnight.cgColor]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
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
