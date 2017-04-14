//
//  ArrowImageView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 08/02/16.
//
//

import Foundation


@IBDesignable open class ArrowImageView: ShapeImageView, ArrowDesignable {
    
    @IBInspectable open var arrowDirection: String = ArrowDirection.Default.rawValue
    
    override open func config() {
        drawArrow()
    }
}
