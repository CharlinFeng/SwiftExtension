//
//  UIView+Other.swift
//  Yeah
//
//  Created by 冯成林 on 16/1/22.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

func degree(d: Double)->Double {return d * M_PI/180.0}


extension UIView {
    
    func rotate(duration: NSTimeInterval ,times: Float){
    
        let anim = CABasicAnimation(keyPath: "transform.rotation.z")
        layer.anchorPoint=CGPointMake(0.5,0.5)
        anim.duration = duration
        anim.repeatCount = times == 0 ? MAXFLOAT : times
        anim.fromValue = 0
        anim.toValue = M_PI * 2
        layer.addAnimation(anim, forKey: "rotate")
    }
    
    func zoomBounce(zoomMaxDuration zoomMaxDuration: NSTimeInterval, zx: CGFloat, zy: CGFloat, zoomNorDuration: NSTimeInterval, damping: CGFloat, velocity: CGFloat){
    
        self.layer.removeAllAnimations()
        
        self.transform = CGAffineTransformIdentity
        
        UIView.animateWithDuration(zoomMaxDuration, animations: { () -> Void in
            
            self.transform = CGAffineTransformMakeScale(zx, zy)
            
        }) { (c) -> Void in
            
            if !c {return}
            
            UIView.animateWithDuration(zoomNorDuration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
                
                self.transform = CGAffineTransformIdentity
                
            }, completion: nil)
        }
    }
    
    func shake(duration: NSTimeInterval, values: [AnyObject]!){
    
        let anim = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        layer.anchorPoint=CGPointMake(0.5,0.5)
        anim.duration = duration
        anim.values = values
        layer.addAnimation(anim, forKey: "rotate")
    }


}

