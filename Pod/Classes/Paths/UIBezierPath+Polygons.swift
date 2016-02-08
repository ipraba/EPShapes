//
//  UIBezierPath+Polygons.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

public extension UIBezierPath  {
    
    func getPolygon(originalRect: CGRect, scale: Double, sides: Int) -> UIBezierPath {
        
        let scaledWidth = (originalRect.size.width * CGFloat(scale))
        let scaledXValue = ((originalRect.size.width) - scaledWidth) / 2
        let scaledHeight = (originalRect.size.height * CGFloat(scale))
        let scaledYValue = ((originalRect.size.height) - scaledHeight) / 2
        
        let scaledRect = CGRect(x: scaledXValue, y: scaledYValue, width: scaledWidth, height: scaledHeight)
        
        drawPolygon(originalRect, scaledRect: scaledRect, sides: sides)
        
        return self
    }
    
    
    func drawPolygon(originalRect: CGRect, scaledRect: CGRect, sides: Int) {
        
        let center = CGPointMake(originalRect.width/2, originalRect.height/2)
        
        var angle = CGFloat( M_PI / 2.0 )
        
        let angleCounter = CGFloat( M_PI * 2.0 / Double(sides) )
        let radius = min(scaledRect.size.width/2, scaledRect.size.height/2)
        
        self.moveToPoint(CGPointMake(radius * cos(angle) + center.x, radius * sin(angle) + center.y))
        for _ in 1...sides  {
            angle += angleCounter
            self.addLineToPoint(CGPointMake(radius * cos(angle) + center.x, radius * sin(angle) + center.y))
        }
        self.closePath()
        
    }
    
}
