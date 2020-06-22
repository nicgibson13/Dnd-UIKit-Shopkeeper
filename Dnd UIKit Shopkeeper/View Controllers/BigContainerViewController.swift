//
//  BigContainerViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/18/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//

import UIKit

class BigContainerViewController: UIViewController, SideSelectionDelegate {
    
    func didTapButton(sender: BaseContainerViewController, previousVC: Int,buttonNumber: Int) {
        if previousVC == 0 {
            removeVC(vc: dashboardVC)
            if buttonNumber == 1 {
                addVC(vc: shopVC)
                
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        addVC(vc: shopVC)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .clear
        let baseContainerViewController = BaseContainerViewController()
        baseContainerViewController.selectionDelegate = self
        // Do any additional setup after loading the view.
    }
    
    var welcomeVC: WelcomeViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: "WelcomeVC") as! WelcomeViewController
        self.addChild(viewController)
        return viewController
    }
    
    var dashboardVC: DashboardViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: "DashboardVC") as! DashboardViewController
        self.addChild(viewController)
        return viewController
    }
    
    var shopVC: ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: "ShopVC") as! ViewController
        self.addChild(viewController)
        return viewController
    }
    
    func addVC(vc: UIViewController) {
        addChild(vc)
        view.addSubview(vc.view)
        vc.view.frame = view.bounds
        vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        vc.didMove(toParent: self)
    }
    
    func removeVC(vc: UIViewController) {
        vc.willMove(toParent: nil)
        vc.view.removeFromSuperview()
        vc.removeFromParent()
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
