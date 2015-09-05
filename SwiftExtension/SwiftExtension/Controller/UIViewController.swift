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
    
        var str = stringFromClass(self)
        
        var vc = self(nibName: str, bundle: nil)
    
        return vc
    }
    
    
    
}