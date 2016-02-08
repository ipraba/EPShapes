//
//  HeartDesignable.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation


public protocol HeartDesignable: ShapeDesignable {
    
    var fillColor: UIColor { get set }
    
    var shapeMask: Bool { get set }    
}

public extension HeartDesignable where Self: UIView {
    
    func drawHeart() {
        
        layer.sublayers?
            .filter  { $0.name == "Heart" }
            .forEach { $0.removeFromSuperlayer() }
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.backgroundColor = UIColor.clearColor().CGColor
        shapeLayer.name = "Heart"
        shapeLayer.path = UIBezierPath().getHearts(frame, scale: scaling).CGPath
        
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