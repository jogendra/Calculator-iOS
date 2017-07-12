//
//  JSLabel.swift
//  Kalculator
//
//  Created by JOGENDRA on 21/01/18.
//  Copyright © 2018 Jogendra Singh. All rights reserved.
//

import UIKit

@IBDesignable
class JSLabel: UILabel {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
