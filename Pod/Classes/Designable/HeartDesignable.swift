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
        shapeLayer.backgroundColor = UIColor.clear.cgColor
        shapeLayer.name = "Heart"
        shapeLayer.path = UIBezierPath().getHearts(frame, scale: scaling).cgPath
        
        if shapeMask {
            shapeLayer.fillRule = kCAFillRuleNonZero
            self.layer.mask = shapeLayer
        } else  {
            shapeLayer.lineWidth = strokeWidth
            shapeLayer.strokeColor = strokeColor.cgColor
            shapeLayer.fillColor = fillColor.cgColor
            self.layer.addSublayer(shapeLayer)
        }
    }
}
