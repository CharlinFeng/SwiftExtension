//
//  UIButton+Extend.swift
//  SwiftExtension
//
//  Created by 冯成林 on 15/9/5.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit


extension UIButton{
    
    /** 设置tintColor */
    func setImageTintColor(tintColor: UIColor, state: UIControlState){
        
        let tintImage = self.image(for: UIControlState.normal)?.imageWithTintColor(tintColor: tintColor)
        
        self.setImage(tintImage, for: state)
    }
    
    
    var titleForNormal: String! {
        
        set{setTitle(newValue, for: UIControlState.normal)}
        get{return title(for: UIControlState.normal)}
    }
    
    var titleForHighlighted: String! {
        
        set{setTitle(newValue, for: UIControlState.highlighted)}
        get{return title(for: UIControlState.highlighted)}
    }
    
    var titleForDisabled: String! {
        
        set{setTitle(newValue, for: UIControlState.disabled)}
        get{return title(for: UIControlState.disabled)}
    }
    
    
    
    
    
}
