//
//  EPHeartView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

@IBDesignable open class HeartView: ShapeView, HeartDesignable {
    
    @IBInspectable open var fillColor: UIColor = UIColor.clear
    @IBInspectable open var shapeMask: Bool = false
    
    override open func config() {
        drawHeart()
    }
    
}


