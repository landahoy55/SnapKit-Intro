//
//  UIColor + Extensions.swift
//  SnapKit-Intro
//
//  Created by P Malone on 08/02/2019.
//  Copyright © 2019 landahoy55. All rights reserved.
//


import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
