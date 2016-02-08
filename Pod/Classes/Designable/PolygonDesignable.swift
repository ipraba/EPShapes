//
//  PolygonDesignable.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation


public protocol PolygonDesignable: ShapeDesignable {
    
    var sides:  Int { get set }
    
    var fillColor: UIColor { get set }

    var shapeMask: Bool { get set }
    
}

public extension PolygonDesignable where Self: UIView {
    
    func drawPolygon() {
        
        layer.sublayers?
            .filter  { $0.name == "Polygon" }
            .forEach { $0.removeFromSuperlayer() }
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.backgroundColor = UIColor.clearColor().CGColor
        shapeLayer.name = "Polygon"
        shapeLayer.path = UIBezierPath().getPolygon(frame, scale: scaling, sides: sides).CGPath
        
        if shapeMask {
            shapeLayer.fillRule = kCAFillRuleNonZero
            self.layer.mask = shapeLayer
        } else  {
              shapeLayer.lineWidth = strokeWidth
              shapeLayer.strokeColor = strokeColor.CGColor
              shapeLayer.fillColor = fillColor.CGColor
            self.layer.addSublayer(shapeLayer)
        }

    }
}