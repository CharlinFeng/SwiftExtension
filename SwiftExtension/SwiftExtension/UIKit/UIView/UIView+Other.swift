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
    
    func rotate(duration: TimeInterval ,times: Float){
    
        let anim = CABasicAnimation(keyPath: "transform.rotation.z")
        layer.anchorPoint=CGPoint(x: 0.5, y: 0.5)
        anim.duration = duration
        anim.repeatCount = times == 0 ? MAXFLOAT : times
        anim.fromValue = 0
        anim.toValue = M_PI * 2
        layer.add(anim, forKey: "rotate")
    }
    
    func zoomBounce(zoomMaxDuration zoomMaxDuration: TimeInterval, zx: CGFloat, zy: CGFloat, zoomNorDuration: TimeInterval, damping: CGFloat, velocity: CGFloat){
    
        self.layer.removeAllAnimations()
        
        self.transform = CGAffineTransform.identity
        
        UIView.animate(withDuration: zoomMaxDuration, animations: { () -> Void in
            
            self.transform = CGAffineTransform(scaleX: zx, y: zy)
            
        }) { (c) -> Void in
            
            if !c {return}
            
            UIView.animate(withDuration: zoomNorDuration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: UIViewAnimationOptions.curveEaseOut, animations: { () -> Void in
                
                self.transform = CGAffineTransform.identity
                
            }, completion: nil)
        }
    }
    
    func shake(duration: TimeInterval, values: [AnyObject]!){
    
        let anim = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        layer.anchorPoint=CGPoint(x:0.5,y:0.5)
        anim.duration = duration
        anim.values = values
        layer.add(anim, forKey: "rotate")
    }


}

