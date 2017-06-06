//
//  UIColor+Extend.swift
//  CFPPTView
//
//  Created by 成林 on 15/6/21.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit

/**  RGB颜色  */
func rgb(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor{
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}


func hexColor(hex:String) -> UIColor {

    var cString:String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines as CharacterSet).uppercased()
    
    if (cString.hasPrefix("#")) {
        
        let secondCharIndex = cString.index(after: cString.startIndex)
        cString = cString.substring(from: secondCharIndex)
    }
    
    if (cString.characters.count != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}


let WhiteColor = UIColor.white
let BlackColor = UIColor.black
let ClearColor = UIColor.black
let RedColor = UIColor.black
