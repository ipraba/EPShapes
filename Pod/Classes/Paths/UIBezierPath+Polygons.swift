//
//  UIBezierPath+Polygons.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 04/02/16.
//
//

import Foundation

public extension UIBezierPath  {
    
    func getPolygon(_ originalRect: CGRect, scale: Double, sides: Int) -> UIBezierPath {
        
        let scaledWidth = (originalRect.size.width * CGFloat(scale))
        let scaledXValue = ((originalRect.size.width) - scaledWidth) / 2
        let scaledHeight = (originalRect.size.height * CGFloat(scale))
        let scaledYValue = ((originalRect.size.height) - scaledHeight) / 2
        
        let scaledRect = CGRect(x: scaledXValue, y: scaledYValue, width: scaledWidth, height: scaledHeight)
        
        drawPolygon(originalRect, scaledRect: scaledRect, sides: sides)
        
        return self
    }
    
    
    func drawPolygon(_ originalRect: CGRect, scaledRect: CGRect, sides: Int) {
        
        let center = CGPoint(x: originalRect.width/2, y: originalRect.height/2)
        
        var angle = CGFloat( Double.pi / 2.0 )
        
        let angleCounter = CGFloat( Double.pi * 2.0 / Double(sides) )
        let radius = min(scaledRect.size.width/2, scaledRect.size.height/2)
        
        self.move(to: CGPoint(x: radius * cos(angle) + center.x, y: radius * sin(angle) + center.y))
        for _ in 1...sides  {
            angle += angleCounter
            self.addLine(to: CGPoint(x: radius * cos(angle) + center.x, y: radius * sin(angle) + center.y))
        }
        self.close()
        
    }
    
}
