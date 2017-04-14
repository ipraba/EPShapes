//
//  PolygonImageView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation

@IBDesignable open class PolygonImageView: ShapeImageView, PolygonDesignable {
    
    @IBInspectable open var sides = 4
    @IBInspectable open var shapeMask = false
    @IBInspectable open var fillColor = UIColor.clear
    
    override open func config() {
        if sides > 0 {
            drawPolygon()
        }
    }
    
}
