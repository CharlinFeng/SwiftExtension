//
//  UIImage+Extend.swift
//  CFPPTView
//
//  Created by 成林 on 15/6/21.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//


import UIKit

extension UIImage {
    
    /** 图片着色 */
    func imageWithTintColor(tintColor: UIColor)->UIImage{
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0);
        
        tintColor.setFill()
    
        let bounds = CGRect(x:0, y: 0, width: self.size.width, height: self.size.height)
        
        UIRectFill(bounds)
        
        self.draw(in: bounds, blendMode: CGBlendMode.destinationIn, alpha: 1.0)
        
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return tintedImage!
    }
    
    
    /** 颜色构造图像 */
    //给我一种颜色，一个尺寸，我给你返回一个UIImage
    class func imageBuildWithColor(color: UIColor, size: CGSize?, isRound: Bool) -> UIImage{
        
        let imgSize = size ?? CGSize(width: 1, height: 1)
        
        let rect=CGRect(x: 0, y: 0, width: imgSize.width, height: imgSize.height)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        
        let context=UIGraphicsGetCurrentContext()
        
        context!.setFillColor(color.cgColor)
        
        if isRound {context!.fillEllipse(in: rect)}else{context!.fill(rect)}
        
        let image=UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image!
    }
    
}
