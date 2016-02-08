//
//  StarImageView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation

@IBDesignable public class StarImageView: ShapeImageView, StarDesignable {
    
    
    @IBInspectable public var fillColor: UIColor = UIColor.clearColor()
    @IBInspectable public var corners: Int = 5
    @IBInspectable public var extrusionPercent: Int = 33
    @IBInspectable public var shapeMask: Bool = false
    
    override public func config() {
        if corners > 0 {
            drawStar()
        }
    }
    
}