//
//  EPPolygonView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

@IBDesignable open class PolygonView: ShapeView, PolygonDesignable {

    @IBInspectable open var sides: Int = 4
    @IBInspectable open var shapeMask: Bool = false
    @IBInspectable open var fillColor: UIColor = UIColor.clear
    
    override open func config() {
        if sides > 0 {
            drawPolygon()
        }
    }
    
}
