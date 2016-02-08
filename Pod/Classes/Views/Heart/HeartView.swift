//
//  EPHeartView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

@IBDesignable public class HeartView: ShapeView, HeartDesignable {
    
    @IBInspectable public var fillColor: UIColor = UIColor.clearColor()
    @IBInspectable public var shapeMask: Bool = false
    
    override public func config() {
        drawHeart()
    }
    
}


