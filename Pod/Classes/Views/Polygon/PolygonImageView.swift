//
//  PolygonImageView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation

@IBDesignable public class PolygonImageView: ShapeImageView, PolygonDesignable {
    
    @IBInspectable public var sides = 4
    @IBInspectable public var shapeMask = false
    @IBInspectable public var fillColor = UIColor.clearColor()
    
    override public func config() {
        if sides > 0 {
            drawPolygon()
        }
    }
    
}