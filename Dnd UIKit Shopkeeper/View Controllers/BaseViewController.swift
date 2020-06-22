//
//  BaseViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/16/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController  {
    
    @IBOutlet weak var bigView: UIView!
    
    var navBarViewController: BaseContainerViewController?
    var bigContainerViewController: BigContainerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.layoutIfNeeded()
        bigView.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        createGradientLayer(rotate: true)
    }
    
    func createGradientLayer(rotate: Bool) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.MainColors.Midnight.cgColor, UIColor.MainColors.Blue.cgColor]
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 1000, height: 1000)
        if rotate == true
        {
            gradientLayer.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)
        }
        self.bigView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
