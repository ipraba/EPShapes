//
//  StarButton.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation


@IBDesignable open class StarButton: ShapeButton, StarDesignable {
    
    
    @IBInspectable open var fillColor: UIColor = UIColor.clear
    @IBInspectable open var corners: Int = 5
    @IBInspectable open var extrusionPercent: Int = 33
    @IBInspectable open var shapeMask: Bool = false
    
    override open func config() {
        if corners > 0 {
            drawStar()
        }
    }
    
}
