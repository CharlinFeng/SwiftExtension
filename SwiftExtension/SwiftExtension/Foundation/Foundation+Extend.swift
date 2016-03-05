//
//  Foundation+Extend.swift
//  SwiftExtension
//
//  Created by 冯成林 on 15/6/10.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit



func stringFromClass(cls: AnyClass)->String?{
    
    let string = NSStringFromClass(cls.self).componentsSeparatedByString(".").last
    
    return string
}



/** 结果单位是KB */
func getCacheSize_KB(sizeClosure:((size: Float)->Void)!) {

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
    
        // 取出cache文件夹路径
        let cachePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).first

        // 取出文件夹下所有文件数组
        let files = NSFileManager.defaultManager().subpathsAtPath(cachePath!)
        // 用于统计文件夹内所有文件大小
        var s = Int();
        
        // 快速枚举取出所有文件名
        for p in files!{
            
            // 把文件名拼接到路径中
            let path = cachePath!+"/"+p
            // 取出文件属性
            let floder = try! NSFileManager.defaultManager().attributesOfItemAtPath(path)
            // 用元组取出文件大小属性
            for (abc,bcd) in floder {
                // 只去出文件大小进行拼接
                if abc == NSFileSize{
                    s += bcd.integerValue
                }
            }
        }
        
        let size_KB = Float(s/1024)
        
        sizeClosure?(size: size_KB)
        
    });
}

func removeCaches(completeClosure:(Void->Void)!){


    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
        
        let cachePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).first
        
        // 取出文件夹下所有文件数组
        let files = NSFileManager.defaultManager().subpathsAtPath(cachePath!)
        
        // 点击确定时开始删除
        for p in files!{
            // 拼接路径
            let path = cachePath!+"/"+p
            // 判断是否可以删除
            if(NSFileManager.defaultManager().fileExistsAtPath(path)){
                // 删除
                try? NSFileManager.defaultManager().removeItemAtPath(path)
            }
        }
        
        completeClosure?()
    });
}

/** 当前时间 */
func NOW_TIME() -> NSTimeInterval{return NSDate().timeIntervalSince1970}


