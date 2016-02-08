//
//  UIBezierPath+Stars.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

public extension UIBezierPath  {
    
    func getStars(originalRect: CGRect, scale: Double, corners: Int, extrusion: Int) -> UIBezierPath {
        
        let scaledWidth = (originalRect.size.width * CGFloat(scale))
        let scaledXValue = ((originalRect.size.width) - scaledWidth) / 2
        let scaledHeight = (originalRect.size.height * CGFloat(scale))
        let scaledYValue = ((originalRect.size.height) - scaledHeight) / 2
        
        let scaledRect = CGRect(x: scaledXValue, y: scaledYValue, width: scaledWidth, height: scaledHeight)
        
        drawStars(originalRect, scaledRect: scaledRect, corners: corners, extrusion: extrusion)
        
        return self
    }
    
    
    func drawStars(originalRect: CGRect, scaledRect: CGRect, corners: Int, extrusion: Int) {
        
//        if extrusion > 100 {
//            extrusion = 100
//        }
        
        let center = CGPointMake(originalRect.width/2, originalRect.height/2)
        
        var angle = -CGFloat( M_PI / 2.0 )
        
        let angleCounter = CGFloat( M_PI * 2.0 / Double(corners * 2) )
        let radius = min(scaledRect.size.width/2, scaledRect.size.height/2)
        
        let extrusion = radius * CGFloat(extrusion) / 100
        
        self.moveToPoint(CGPointMake(radius * cos(angle) + center.x, radius * sin(angle) + center.y))
        for i in 1...(corners * 2)  {
            if i % 2 != 0 {
                self.addLineToPoint(CGPointMake(radius * cos(angle) + center.x, radius * sin(angle) + center.y))
            } else {
                self.addLineToPoint(CGPointMake(extrusion * cos(angle) + center.x, extrusion * sin(angle) + center.y))
            }
            
            angle += angleCounter
        }
        self.closePath()
        
    }
    
}
