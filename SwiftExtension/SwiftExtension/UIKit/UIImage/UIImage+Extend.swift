//
//  UIImage+Extend.swift
//  CFPPTView
//
//  Created by 成林 on 15/6/21.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//


import UIKit

extension UIImage {
    
    func imageWithTintColor(tintColor: UIColor)->UIImage{
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0);
        
        tintColor.setFill()
    
        let bounds = CGRectMake(0, 0, self.size.width, self.size.height)
        
        UIRectFill(bounds)
        
        self.drawInRect(bounds, blendMode: kCGBlendModeDestinationIn, alpha: 1.0)
        
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return tintedImage
    }
    
}
