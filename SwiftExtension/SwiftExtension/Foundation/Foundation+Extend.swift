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
  
    let string = stringFromClass(cls: cls.self)?.components(separatedBy: ".").last
    
    return string
}



/** 结果单位是KB */
func getCacheSize_KB(sizeClosure:((_ size: Float)->Void)!) {


    let queue = DispatchQueue(label: "myBackgroundQueue", qos: .userInitiated, attributes: .concurrent)
    
    queue.async {

    
        // 取出cache文件夹路径
        let cachePath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first

        // 取出文件夹下所有文件数组
        let files = FileManager.default.subpaths(atPath: cachePath!)
        // 用于统计文件夹内所有文件大小
        var s = Int();
        
        // 快速枚举取出所有文件名
        for p in files!{
            
            // 把文件名拼接到路径中
            let path = cachePath!+"/"+p
            // 取出文件属性
            let floder = try! FileManager.default.attributesOfItem(atPath: path)
            // 用元组取出文件大小属性
            for (abc,bcd) in floder {
                // 只去出文件大小进行拼接
            
                if abc == FileAttributeKey.size{
                    s += (bcd as AnyObject).integerValue
                }
            }
        }
        
        let size_KB = Float(s/1024)
        
        sizeClosure?(size_KB)
        
    }
}

func removeCaches(completeClosure:((Void)->Void)!){

    let queue = DispatchQueue(label: "removeCaches", qos: .userInitiated, attributes: .concurrent)
    
    queue.async {

        
        let cachePath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first
        
        // 取出文件夹下所有文件数组
        let files = FileManager.default.subpaths(atPath: cachePath!)
        
        // 点击确定时开始删除
        for p in files!{
            // 拼接路径
            let path = cachePath!+"/"+p
            // 判断是否可以删除
            if(FileManager.default.fileExists(atPath: path)){
                // 删除
                try? FileManager.default.removeItem(atPath: path)
            }
        }
        
        completeClosure?()
    }
}

/** 当前时间 */
func NOW_TIME() -> TimeInterval{return NSDate().timeIntervalSince1970}


