//
//  Execute.swift
//  Yeah
//
//  Created by 冯成林 on 15/11/25.
//  Copyright © 2015年 冯成林. All rights reserved.
//

import Foundation

class  Execute {
    
    
    class func execute(key: String, maxTimes: Int, action: (Void->Void)?){
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let nowTimes = defaults.integerForKey(key)
        
        if nowTimes >= maxTimes {return};
        
        action?(); defaults.setInteger(nowTimes + 1, forKey: key)
    }
}