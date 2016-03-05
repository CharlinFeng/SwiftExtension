//
//  AppDelegate+Extend.swift
//  WelCome
//
//  Created by 冯成林 on 15/7/7.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate{


    /** 扩展AppDelegate的window初始化 */
    func appDelegatePrepare(){
        
//        let window = UIWindow(frame: Screen.bounds)
//        
//        //设置窗口颜色
//        window.backgroundColor = UIColor.blackColor()
//        
//        //设置主window
//        self.window = window
//        
//        //设置根控制器
//        window.rootViewController = window.rootVCPrepare()
//        
//        //执行一个启动动画
//        CoreLaunchLite.animWithWindow(window, image: nil)
//        
//        //窗口成为主窗口并激活
//        window.makeKeyAndVisible()
//        
//        //设计键盘外观
//        UITextField.appearance().keyboardAppearance = UIKeyboardAppearance.Dark
//
//        //设置IQKeyboard工具条提示文字大小
//        IQKeyboardManager.sharedManager().placeholderFont = UIFont.systemFontOfSize(17)
//        
//        //注册IQKeyboard的所有tf的公共父类视图
//        IQKeyboardManager.sharedManager().considerToolbarPreviousNextInViewClass(IQContentView)
//        
//        UIActionSheet.appearance().actionSheetStyle = UIActionSheetStyle.BlackTranslucent
//        
//        locatioinPrepare()
//        
//        let v = UIView()
//        v.backgroundColor = UIColor.blackColor()
//        UITableViewCell.appearance().selectedBackgroundView = v
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "tokenDeprecated", name: AppHttpTokenDeprecatedNoti, object: nil)
    }
    
    func tokenDeprecated(){
    
//        //退出环信
//        AppDelegate.loginOutForEaseMob()
//        
//        //注销jpush
//        CoreJPush.setTags(nil, alias: "", resBlock: nil)
//        
//        //删除缓存
//        AppTool.sharedInstance.deleteUserModel()
//        
//        //发通知
//        NSNotificationCenter.defaultCenter().postNotificationName(LoginOutNoti, object: nil)
//        
//        let tabVC = window?.rootViewController as? UITabBarController
//        let navVC = tabVC?.selectedViewController as? UINavigationController
//        let vc = navVC?.topViewController as? CoreListCommonVC
//        
//        navVC?.popToRootViewControllerAnimated(true)
//        
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,Int64(0.5 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
//            AppTool.sharedInstance.checkUser(true, navVC: navVC)
//        })
    }
    
//    func locatioinPrepare(){
//        
//        let timer = NSTimer.scheduledTimerWithTimeInterval(2 * 60, target: self, selector: "locatioinTimerRun", userInfo: nil, repeats: true)
//        self.timer = timer
//        timer.fire()
//    }
//    
//    func locatioinTimerRun(){
//        
//        LocationManager.getOnceLocation(locaClosure: nil)
//        
//        print("更新位置中")
//    }

}