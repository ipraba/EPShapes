//
//  HeartDesignable.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

public extension UIBezierPath  {
    
    func getHearts(originalRect: CGRect, scale: Double) -> UIBezierPath {
        
        
        let scaledWidth = (originalRect.size.width * CGFloat(scale))
        let scaledXValue = ((originalRect.size.width) - scaledWidth) / 2
        let scaledHeight = (originalRect.size.height * CGFloat(scale))
        let scaledYValue = ((originalRect.size.height) - scaledHeight) / 2
        
        let scaledRect = CGRect(x: scaledXValue, y: scaledYValue, width: scaledWidth, height: scaledHeight)
        
        self.moveToPoint(CGPointMake(originalRect.size.width/2, scaledRect.origin.y + scaledRect.size.height))
        
        
        self.addCurveToPoint(CGPointMake(scaledRect.origin.x, scaledRect.origin.y + (scaledRect.size.height/4)),
            controlPoint1:CGPointMake(scaledRect.origin.x + (scaledRect.size.width/2), scaledRect.origin.y + (scaledRect.size.height*3/4)) ,
            controlPoint2: CGPointMake(scaledRect.origin.x, scaledRect.origin.y + (scaledRect.size.height/2)) )
        
        self.addArcWithCenter(CGPointMake( scaledRect.origin.x + (scaledRect.size.width/4),scaledRect.origin.y + (scaledRect.size.height/4)),
            radius: (scaledRect.size.width/4),
            startAngle: CGFloat(M_PI),
            endAngle: 0,
            clockwise: true)
        
        self.addArcWithCenter(CGPointMake( scaledRect.origin.x + (scaledRect.size.width * 3/4),scaledRect.origin.y + (scaledRect.size.height/4)),
            radius: (scaledRect.size.width/4),
            startAngle: CGFloat(M_PI),
            endAngle: 0,
            clockwise: true)
        
        self.addCurveToPoint(CGPointMake(originalRect.size.width/2, scaledRect.origin.y + scaledRect.size.height),
            controlPoint1: CGPointMake(scaledRect.origin.x + scaledRect.size.width, scaledRect.origin.y + (scaledRect.size.height/2)),
            controlPoint2: CGPointMake(scaledRect.origin.x + (scaledRect.size.width/2), scaledRect.origin.y + (scaledRect.size.height*3/4)) )

        self.closePath()
        
        return self
    }
    
    
    func maximumSquareRect(rect: CGRect) -> CGRect {
        let side = min(rect.size.width, rect.size.height)
        return CGRectMake(rect.size.width/2 - side/2, rect.size.height/2 - side/2, side, side)
    }
}
