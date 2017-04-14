//
//  StarDesignable.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation


public protocol StarDesignable: ShapeDesignable {
    
    var corners:  Int { get set }
    
    var extrusionPercent:  Int { get set }
    
    var fillColor: UIColor { get set }
    
    var shapeMask: Bool { get set }    
}

public extension StarDesignable where Self: UIView {
    
    func drawStar() {
        
        layer.sublayers?
            .filter  { $0.name == "Star" }
            .forEach { $0.removeFromSuperlayer() }
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.backgroundColor = UIColor.clear.cgColor
        shapeLayer.name = "Star"
        shapeLayer.path = UIBezierPath().getStars(frame, scale: scaling, corners: corners, extrusion: extrusionPercent).cgPath
        
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
