//
//  EPPolygonView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

@IBDesignable public class PolygonView: ShapeView, PolygonDesignable {

    @IBInspectable public var sides: Int = 4
    @IBInspectable public var shapeMask: Bool = false
    @IBInspectable public var fillColor: UIColor = UIColor.clearColor()
    
    override public func config() {
        if sides > 0 {
            drawPolygon()
        }
    }
    
}
