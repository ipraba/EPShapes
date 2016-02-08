//
//  HeartButton.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation

@IBDesignable public class HeartButton: ShapeButton, HeartDesignable {
    
    @IBInspectable public var fillColor: UIColor = UIColor.clearColor()
    @IBInspectable public var shapeMask: Bool = false
    
    override public func config() {
        drawHeart()
    }
    
}
