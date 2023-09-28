//
//  UIView+Extensions.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 3.08.2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat{
        get { return self.cornerRadius }
        set{self.layer.cornerRadius = newValue}
    }
}
