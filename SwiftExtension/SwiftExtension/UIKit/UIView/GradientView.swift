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
    
    init(frame: CGRect, startColor: UIColor?, endColor: UIColor?, p: CGFloat?){super.init(frame: frame); self.startColor = startColor; self.endColor = endColor; self.p = p;backgroundColor = UIColor.clear}

    required init?(coder aDecoder: NSCoder) {super.init(coder: aDecoder)}
}



extension GradientView{
    
    func paramPrepare(startColor: UIColor?, endColor: UIColor?, p: CGFloat?){self.startColor = startColor; self.endColor = endColor; self.p = p; setNeedsDisplay()}
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        
        super.draw(rect)
        
        if startColor == nil || endColor == nil || p == nil {return}
        
        let w = bounds.size.width
        
        let currentContext = UIGraphicsGetCurrentContext()
        
        currentContext!.saveGState()

        let colors = [startColor!.cgColor, endColor!.cgColor]
        
        let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: colors as CFArray, locations: nil)
        
        
        
        currentContext!.drawRadialGradient(gradient!, startCenter: CGPoint(x: w/2, y: w/2), startRadius: 0, endCenter: CGPoint(x: w/2, y: w/2), endRadius: w * p!, options: CGGradientDrawingOptions.drawsAfterEndLocation)
       
        currentContext!.restoreGState()
    }
}

