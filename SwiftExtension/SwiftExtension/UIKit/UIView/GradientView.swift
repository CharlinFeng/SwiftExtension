//
//  a.swift
//  AnimTabVC
//
//  Created by 冯成林 on 15/11/23.
//  Copyright © 2015年 冯成林. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    var startColor: UIColor?
    var endColor: UIColor?
    var p: CGFloat?
    
    init(frame: CGRect, startColor: UIColor?, endColor: UIColor?, p: CGFloat?){super.init(frame: frame); self.startColor = startColor; self.endColor = endColor; self.p = p;backgroundColor = UIColor.clearColor()}

    required init?(coder aDecoder: NSCoder) {super.init(coder: aDecoder)}
}



extension GradientView{
    
    func paramPrepare(startColor: UIColor?, endColor: UIColor?, p: CGFloat?){self.startColor = startColor; self.endColor = endColor; self.p = p; setNeedsDisplay()}
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        backgroundColor = UIColor.clearColor()
    }
    
    override func drawRect(rect: CGRect) {
        
        super.drawRect(rect)
        
        if startColor == nil || endColor == nil || p == nil {return}
        
        let w = bounds.size.width
        
        let currentContext = UIGraphicsGetCurrentContext()
        
        CGContextSaveGState(currentContext)

        let colors: CFArray = [startColor!.CGColor, endColor!.CGColor]
        
        let gradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), colors, nil)
        
        CGContextDrawRadialGradient(currentContext, gradient, CGPointMake(w/2, w/2), 0, CGPointMake(w/2, w/2), w * p!, CGGradientDrawingOptions.DrawsAfterEndLocation)
       
        CGContextRestoreGState(currentContext)
    }
}

