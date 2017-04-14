//
//  UIBezierPath+Extensions.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 25/01/16.
//
//

import UIKit

public extension UIBezierPath  {
    
    func getArrow(_ originalRect: CGRect, scale: Double, arrowDirection: ArrowDirection) -> UIBezierPath {
        
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
    
    func drawTopArrow(_ scaledRect: CGRect, originalRect: CGRect) {
        self.move( to: CGPoint(x: originalRect.size.width/2, y: scaledRect.origin.y))
        self.addLine(to: CGPoint(x: originalRect.size.width/2, y: scaledRect.origin.y + scaledRect.size.height))
        
        
        self.move(to: CGPoint(x: scaledRect.origin.x, y: (scaledRect.origin.y) + ((scaledRect.size.height/3) )))
        self.addLine( to: CGPoint(x: originalRect.size.width/2, y: scaledRect.origin.y))
        
        self.addLine( to: CGPoint(x: scaledRect.origin.x + scaledRect.size.width, y: (scaledRect.origin.y) + ((scaledRect.size.height/3) )))
        
    }
    
    func drawRightArrow(_ scaledRect: CGRect, originalRect: CGRect) {
        
        self.move( to: CGPoint(x: scaledRect.origin.x, y: originalRect.size.height/2))
        self.addLine(to: CGPoint(x: scaledRect.origin.x + scaledRect.size.width, y: originalRect.size.height/2))
        self.move( to: CGPoint(x: (scaledRect.origin.x) + (scaledRect.size.width/1.5),y: scaledRect.origin.y))
        self.addLine(to: CGPoint(x: scaledRect.size.width + scaledRect.origin.x, y: originalRect.size.height/2))
        self.addLine(to: CGPoint(x: (scaledRect.origin.x) + (scaledRect.size.width/1.5), y: scaledRect.size.height + scaledRect.origin.y))
        
    }
    
    func drawBottomArrow(_ scaledRect: CGRect, originalRect: CGRect) {
        
        self.move( to: CGPoint(x: originalRect.size.width/2, y: scaledRect.origin.y))
        self.addLine(to: CGPoint(x: originalRect.size.width/2, y: scaledRect.origin.y + scaledRect.size.height))
        
        
        self.move(to: CGPoint(x: scaledRect.origin.x, y: (scaledRect.origin.y + scaledRect.size.height) - ((scaledRect.size.height/3) )))
        
        self.addLine(to: CGPoint(x: originalRect.size.width/2, y: scaledRect.origin.y + scaledRect.size.height))
        
        self.addLine( to: CGPoint(x: scaledRect.origin.x + scaledRect.size.width, y: (scaledRect.origin.y + scaledRect.size.height) - ((scaledRect.size.height/3) )))
        
    }
    
    func drawLeftArrow(_ scaledRect: CGRect, originalRect: CGRect) {
        
        self.move( to: CGPoint(x: scaledRect.origin.x, y: originalRect.size.height/2))
        self.addLine(to: CGPoint(x: scaledRect.origin.x + scaledRect.size.width, y: originalRect.size.height/2))
        
        self.move( to: CGPoint(x: (scaledRect.origin.x) + (scaledRect.size.width/3),y: scaledRect.origin.y))
        self.addLine( to: CGPoint(x: scaledRect.origin.x, y: originalRect.size.height/2))
        
        self.addLine(to: CGPoint(x: (scaledRect.origin.x) + (scaledRect.size.width/3), y: scaledRect.size.height + scaledRect.origin.y))
        
    }
    

    
}
