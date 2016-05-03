//
//  UIViewStyling.swift
//  CustomButtonTest
//
//  Created by Mengying Feng on 1/04/2016.
//  Copyright © 2016 Mengying Feng. All rights reserved.
//

import UIKit

extension UIView {
    // we want every single uiview to have a custom option of corner radius in interface builder
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
