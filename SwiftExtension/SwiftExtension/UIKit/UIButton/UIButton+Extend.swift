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
        
        let tintImage = self.imageForState(UIControlState.Normal)?.imageWithTintColor(tintColor)
        
        self.setImage(tintImage, forState: state)
    }
    
    
    var titleForNormal: String! {
        
        set{setTitle(newValue, forState: UIControlState.Normal)}
        get{return titleForState(UIControlState.Normal)}
    }
    
    var titleForHighlighted: String! {
        
        set{setTitle(newValue, forState: UIControlState.Highlighted)}
        get{return titleForState(UIControlState.Highlighted)}
    }
    
    var titleForDisabled: String! {
        
        set{setTitle(newValue, forState: UIControlState.Disabled)}
        get{return titleForState(UIControlState.Disabled)}
    }
    
    
    
    
    
}