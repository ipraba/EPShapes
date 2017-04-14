//
//  ShapeView.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 05/02/16.
//
//

import Foundation

@IBDesignable open class ShapeView: UIView, ShapeDesignable {
    
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable open var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable open var strokeColor: UIColor = UIColor.black
    @IBInspectable open var scaling: Double = 1.0
    @IBInspectable open var strokeWidth: CGFloat = 1.0

    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        config()
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    open func config() {
        //To be subclassed
    }
    
    
}
