//
//  RoundedImageView.swift
//  Train-Gain
//
//  Created by Kacper Raczy on 21.06.2017.
//  Copyright © 2017 Kacper Raczy. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedImageView: UIImageView {
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var shadowColor:UIColor = UIColor.black {
        didSet{
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 10.0 {
        didSet{
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.25 {
        didSet{
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffsetX: Double = 0.0 {
        didSet{
            setShadowOffset()
        }
    }
    
    @IBInspectable var shadowOffsetY: Double = -1.5 {
        didSet{
            setShadowOffset()
        }
    }
    
    var cornerRadius: CGFloat = 28.0
    
    private func setShadowOffset() {
        self.layer.shadowOffset = CGSize(width: shadowOffsetX, height: shadowOffsetY)
    }

    override func awakeFromNib() {
        createMask()
    }
    
    func createMask() {
        self.layer.cornerRadius = cornerRadius
    }

}
