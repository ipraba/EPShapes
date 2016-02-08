//
//  ShapeDesignable.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 05/02/16.
//
//

import Foundation


public protocol ShapeDesignable {
    
    var strokeColor: UIColor { get set }
    
    var scaling: Double { get set }
    
    var strokeWidth: CGFloat { get set }
    
}