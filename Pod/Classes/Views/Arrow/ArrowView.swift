//
//  EPShapeView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 25/01/16.
//
//

import UIKit

@IBDesignable open class ArrowView: ShapeView, ArrowDesignable {

    @IBInspectable open var arrowDirection: String = ArrowDirection.Default.rawValue
    
    override open func config() {
        drawArrow()
    }
}

