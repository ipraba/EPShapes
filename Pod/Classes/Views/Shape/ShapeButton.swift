//
//  ShapeButton.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 05/02/16.
//
//

import Foundation

@IBDesignable public class ShapeButton: UIButton , ShapeDesignable {
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable public var borderColor: UIColor = UIColor.blackColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable public var strokeColor: UIColor = UIColor.blackColor()
    @IBInspectable public var scaling: Double = 1.0
    @IBInspectable public var strokeWidth: CGFloat = 1.0
    
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        config()
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    public func config() {
        //To be subclassed
    }
    
    
}