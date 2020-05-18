//
//  BigContainerViewController.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/18/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//

import UIKit

class BigContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addView(asChildViewController: WelcomeViewController)
        // Do any additional setup after loading the view.
        delegateFunction()
    }
        
    private var shopViewController: ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(identifier: "ViewController") as! ViewController
        self.addView(asChildViewController: viewController)
        return viewController
    }
    
    private var WelcomeViewController: WelcomeViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(identifier: "WelcomeViewController") as! WelcomeViewController
        self.addView(asChildViewController: viewController)
        return viewController
    }
    
//    private var shopViewController: ViewController {
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let viewController = storyboard.instantiateViewController(identifier: "ViewController") as! ViewController
//        self.addView(asChildViewController: viewController)
//        return viewController
//    }
//
//    private var shopViewController: ViewController {
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let viewController = storyboard.instantiateViewController(identifier: "ViewController") as! ViewController
//        self.addView(asChildViewController: viewController)
//        return viewController
//    }

    func delegateFunction() {
        let BaseContainerVC = storyboard?.instantiateViewController(identifier: "BaseContainerViewController") as! BaseContainerViewController
        BaseContainerVC.selectionDelegate = self
        let WelcomeVC = storyboard?.instantiateViewController(identifier: "WelcomeViewController") as! WelcomeViewController
        WelcomeVC.getStartedProtocol = self
    }
    
    private func addView(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChild(viewController)

        // Add Child View as Subview
        view.addSubview(viewController.view)

        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }

    private func removeView(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)

        // Remove Child View From Superview
        viewController.view.removeFromSuperview()

        // Notify Child View Controller
        viewController.removeFromParent()
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

extension BigContainerViewController: SideSelectionDelegate {
    func didTapButton(controller: UIViewController) {
        removeView(asChildViewController: self.presentedViewController!)
        addView(asChildViewController: controller)
    }
}

extension BigContainerViewController: GetStartedButtonTapped {
    func presentNext(controller: UIViewController) {
        removeView(asChildViewController: self.presentedViewController!)
        addView(asChildViewController: controller)
    }
    
    
}
