//
//  HeartButton.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation

@IBDesignable open class HeartButton: ShapeButton, HeartDesignable {
    
    @IBInspectable open var fillColor: UIColor = UIColor.clear
    @IBInspectable open var shapeMask: Bool = false
    
    override open func config() {
        drawHeart()
    }
    
}
