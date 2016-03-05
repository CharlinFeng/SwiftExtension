//
//  UIWindow+AppDelegate.swift
//  WelCome
//
//  Created by 冯成林 on 15/7/10.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit

extension UIWindow {
    
    /** 这些返回内容，每个APP是不一样的 */
    /** 返回根控制器 */
    func rootVCPrepare()->UIViewController{
        
        //测试
//        let vc = CommunityTVC()
//        let navVC = AppNavVC(rootViewController:vc)
//      
//        return navVC
//
        
        
        return self.determinedRootVC()
    }
    
    /** 考虑版本新特性页面，在这里决定返回的具体的控制器 */
    func determinedRootVC()->UIViewController{
        
//        //考虑版本新特性
//        //判断是否需要显示：（内部已经考虑版本及本地版本缓存）
//        var canShow = CoreNewFeatureVC.canShowNewFeature()
//        
//        //测试代码，正式版本应该删除
////        canShow = true;
//        
//        if(canShow){
//            
//            let m1 = NewFeatureModel(UIImage(named: getRightImageName(0)))
//            let m2 = NewFeatureModel(UIImage(named: getRightImageName(1)))
//            let m3 = NewFeatureModel(UIImage(named: getRightImageName(2)))
//
//            let newFeatureVC = CoreNewFeatureVC(models: [m1,m2,m3], enterBlock: {
//            
//                //添加transition
//                let tabVC = APPTabVC()
//                
//                self.rootViewController = tabVC
//            
//                self.layer.transitionWithAnimType(TransitionAnimTypeSuckEffect, subType: TransitionSubtypeLeft, curve: TransitionCurveEaseIn, duration: 1.5)
//                
//            })
// 
//            return newFeatureVC
//            
//        }else{
//            
//            let tabVC = APPTabVC()
//            
//            return tabVC;
//        }
        
        return UIViewController()
    }
    
    
    /** 获取不同设备获取正确的图片 */
    func getRightImageName(i: Int) -> String {
        
        var deviceStr = ""
        if iPhone4x_320_480() {deviceStr = "4"}
        if iPhone5x_320_568() {deviceStr = "5"}
        if iPhone6_375_667() {deviceStr = "6"}
        if iPhone6Plus_414_736_Portait() {deviceStr = "6p"}
        
        return "newfeature_\(deviceStr)_\(i)"
    }
    
    
    /** 切换控制器 */
    func toggleRootVC(){
        
        //设置根控制器
        self.rootViewController = self.rootVCPrepare()
    }

    
}


