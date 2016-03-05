//
//  UITabBarVC+tintColor.swift
//  Yeah
//
//  Created by 冯成林 on 15/11/24.
//  Copyright © 2015年 冯成林. All rights reserved.
//

import UIKit



/** 调整各种bar的颜色 */
extension UITabBarController {
    
    func barTintColorSuit(nomalColor: UIColor!, selectedColor: UIColor){
        
        if nomalColor != nil {tabBar.barTintColor = nomalColor}
        
        /** 数组遍历 */
        for item: UITabBarItem in self.tabBar.items!{
            item.image = item.image?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            item.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.whiteColor()], forState: UIControlState.Normal)
            item.setTitleTextAttributes([NSForegroundColorAttributeName:selectedColor], forState: UIControlState.Selected)
        }
        
        /** 设置图片颜色 */
        UITabBar.appearance().selectedImageTintColor = selectedColor
        
        tabBar.barStyle = UIBarStyle.BlackOpaque
    }
    
    
    
}