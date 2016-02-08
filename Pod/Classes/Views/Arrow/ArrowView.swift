//
//  EPShapeView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 25/01/16.
//
//

import UIKit

@IBDesignable public class ArrowView: ShapeView, ArrowDesignable {

    @IBInspectable public var arrowDirection: String = ArrowDirection.Default.rawValue
    
    override public func config() {
        drawArrow()
    }
}

