//
//  CustomButton.swift
//  CustomButtonTest
//
//  Created by Mengying Feng on 1/04/2016.
//  Copyright © 2016 Mengying Feng. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

//    // this doesn't set the cornerRadius to any value, but it allows the property to show up in the Attributes inspector
//    @IBInspectable var cornerRadius: CGFloat = 0.0 
//    
//    override func awakeFromNib() {
//        // you can set value here but it's not alwasy called
//    }
//    
//    override func drawRect(rect: CGRect) {
//        // set value here
//        self.layer.cornerRadius = cornerRadius
//    }
//  
    
    
    let another = UIView()
    
    @IBInspectable var padding: CGFloat = 0
    
    @IBInspectable var integer: Int = 0
    @IBInspectable var float: CGFloat = 0
    @IBInspectable var double: Double = 0
    @IBInspectable var point: CGPoint = CGPointZero
    @IBInspectable var size: CGSize = CGSizeZero
    @IBInspectable var customFrame: CGRect = CGRectZero
    @IBInspectable var color: UIColor = UIColor.clearColor()
    @IBInspectable var string: String = "Super Cool!"
    
    @IBInspectable var innerViewHidden: Bool = false {
        didSet {
            another.hidden = innerViewHidden
        }
    }
    
    
    
    override func drawRect(rect: CGRect) {
        
        another.backgroundColor = UIColor.purpleColor()
        
        let size = CGSizeMake(self.frame.size.width - padding * 2, self.frame.size.height - padding * 2)
        another.frame = CGRectMake(padding, padding, size.width, size.height)
        
        self.addSubview(another)
        
    }
    

}
