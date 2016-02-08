//
//  UIBezierPath+Extensions.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 25/01/16.
//
//

import UIKit

public extension UIBezierPath  {
    
    func getArrow(originalRect: CGRect, scale: Double, arrowDirection: ArrowDirection) -> UIBezierPath {
        
        let scaledWidth = (originalRect.size.width * CGFloat(scale))
        let scaledXValue = ((originalRect.size.width) - scaledWidth) / 2
        let scaledHeight = (originalRect.size.height * CGFloat(scale))
        let scaledYValue = ((originalRect.size.height) - scaledHeight) / 2
        
        let scaledRect = CGRect(x: scaledXValue, y: scaledYValue, width: scaledWidth, height: scaledHeight)

        switch arrowDirection {
            case .Top:
                drawTopArrow(scaledRect, originalRect: originalRect)
            case .Right, .Default:
                drawRightArrow(scaledRect, originalRect: originalRect)
            case .Bottom:
                drawBottomArrow(scaledRect, originalRect: originalRect)
            case .Left:
                drawLeftArrow(scaledRect, originalRect: originalRect)
        }
        
        return self
    }
    
    func drawTopArrow(scaledRect: CGRect, originalRect: CGRect) {
        self.moveToPoint( CGPointMake(originalRect.size.width/2, scaledRect.origin.y))
        self.addLineToPoint(CGPointMake(originalRect.size.width/2, scaledRect.origin.y + scaledRect.size.height))
        
        
        self.moveToPoint(CGPointMake(scaledRect.origin.x, (scaledRect.origin.y) + ((scaledRect.size.height/3) )))
        self.addLineToPoint( CGPointMake(originalRect.size.width/2, scaledRect.origin.y))
        
        self.addLineToPoint( CGPointMake(scaledRect.origin.x + scaledRect.size.width, (scaledRect.origin.y) + ((scaledRect.size.height/3) )))
        
    }
    
    func drawRightArrow(scaledRect: CGRect, originalRect: CGRect) {
        
        self.moveToPoint( CGPointMake(scaledRect.origin.x, originalRect.size.height/2))
        self.addLineToPoint(CGPointMake(scaledRect.origin.x + scaledRect.size.width, originalRect.size.height/2))
        self.moveToPoint( CGPointMake((scaledRect.origin.x) + (scaledRect.size.width/1.5),scaledRect.origin.y))
        self.addLineToPoint(CGPointMake(scaledRect.size.width + scaledRect.origin.x, originalRect.size.height/2))
        self.addLineToPoint(CGPointMake((scaledRect.origin.x) + (scaledRect.size.width/1.5), scaledRect.size.height + scaledRect.origin.y))
        
    }
    
    func drawBottomArrow(scaledRect: CGRect, originalRect: CGRect) {
        
        self.moveToPoint( CGPointMake(originalRect.size.width/2, scaledRect.origin.y))
        self.addLineToPoint(CGPointMake(originalRect.size.width/2, scaledRect.origin.y + scaledRect.size.height))
        
        
        self.moveToPoint(CGPointMake(scaledRect.origin.x, (scaledRect.origin.y + scaledRect.size.height) - ((scaledRect.size.height/3) )))
        
        self.addLineToPoint(CGPointMake(originalRect.size.width/2, scaledRect.origin.y + scaledRect.size.height))
        
        self.addLineToPoint( CGPointMake(scaledRect.origin.x + scaledRect.size.width, (scaledRect.origin.y + scaledRect.size.height) - ((scaledRect.size.height/3) )))
        
    }
    
    func drawLeftArrow(scaledRect: CGRect, originalRect: CGRect) {
        
        self.moveToPoint( CGPointMake(scaledRect.origin.x, originalRect.size.height/2))
        self.addLineToPoint(CGPointMake(scaledRect.origin.x + scaledRect.size.width, originalRect.size.height/2))
        
        self.moveToPoint( CGPointMake((scaledRect.origin.x) + (scaledRect.size.width/3),scaledRect.origin.y))
        self.addLineToPoint( CGPointMake(scaledRect.origin.x, originalRect.size.height/2))
        
        self.addLineToPoint(CGPointMake((scaledRect.origin.x) + (scaledRect.size.width/3), scaledRect.size.height + scaledRect.origin.y))
        
    }
    

    
}
