//
//  UIViewController.swift
//  CFExtend
//
//  Created by 成林 on 15/6/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    class func controllerInitWithNib()->UIViewController{
    
        let str = stringFromClass(self)
        
        let vc = self.init(nibName: str, bundle: nil)
    
        return vc
    }
    
    /** 隐藏返回按钮 */
    func hideBackBtn(){
        
        let item = UIBarButtonItem(customView: UIView())
        self.navigationItem.leftBarButtonItem=item
    }
    
    /** 添加dismiss按钮 */
    func addDismissBtn(){
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "SwiftExtension.bundle/delete"), style: UIBarButtonItemStyle.Plain, target: self, action: "dismissAction")
    }
    
    func dismissAction(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}