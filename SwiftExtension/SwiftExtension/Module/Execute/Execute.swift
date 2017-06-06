//
//  Execute.swift
//  Yeah
//
//  Created by 冯成林 on 15/11/25.
//  Copyright © 2015年 冯成林. All rights reserved.
//

import Foundation

class  Execute {
    
    
    class func execute(key: String, maxTimes: Int, action: ((Void)->Void)?){
        
        let defaults = UserDefaults.standard
        
        let nowTimes = defaults.integer(forKey: key)
        
        if nowTimes >= maxTimes {return};
        
        action?(); defaults.set(nowTimes + 1, forKey: key)
    }
}
