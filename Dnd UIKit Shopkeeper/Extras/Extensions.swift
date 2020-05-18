//
//  Extensions.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 5/16/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    struct MainColors {
        static let Blue = #colorLiteral(red: 0.2, green: 0.3647058824, blue: 0.6705882353, alpha: 1)
        static let DarkBlue = #colorLiteral(red: 0.1137254902, green: 0.2980392157, blue: 0.4588235294, alpha: 1)
        static let Midnight = #colorLiteral(red: 0.09019607843, green: 0.0862745098, blue: 0.1215686275, alpha: 1)
    }
}

extension UIStackView {
    func addBackground(color: UIColor) {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subview, at: 0)
    }
}
