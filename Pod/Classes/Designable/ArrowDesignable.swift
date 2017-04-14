//
//  ShapeDesignable.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 27/01/16.
//
//

import Foundation

public protocol ArrowDesignable: ShapeDesignable {

    var arrowDirection: String { get set }
}

public extension ArrowDesignable where Self: UIView {
    
    func drawArrow() {
        
        layer.sublayers?
            .filter  { $0.name == "Arrow" }
            .forEach { $0.removeFromSuperlayer() }
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.backgroundColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = strokeWidth
        shapeLayer.name = "Arrow"
        shapeLayer.strokeColor = strokeColor.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        if let arrowDir = ArrowDirection(rawValue:arrowDirection) {
            shapeLayer.path = UIBezierPath().getArrow(frame , scale: scaling, arrowDirection: arrowDir).cgPath
        }
        self.layer.addSublayer(shapeLayer)
    }
}
