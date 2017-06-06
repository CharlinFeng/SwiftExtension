//
//  Array+Extend.swift
//  SwiftExtension
//
//  Created by 冯成林 on 15/6/10.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation

extension Array{
    
    
    
    /** 仿OC遍历 */
    func enumerate(itemClosure: (_ index: Int , _ value: Element)->Void){
        
        
        
        for i in 0 ..< self.count {
            
            itemClosure(i, self[i])
        }
    }
    
    
    
    
    
    
    
    
    
    
}


