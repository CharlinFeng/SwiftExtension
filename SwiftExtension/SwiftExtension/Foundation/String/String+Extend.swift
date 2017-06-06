//
//  String+Extend.swift
//  WelCome
//
//  Created by 冯成林 on 15/7/8.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit





extension NSString {

    var timeString_OC: NSString {
        
        let res = "\(self.doubleValue)".timeString_weiboStyle(format: "MM-dd") ?? "未知"

        return res as NSString
    }
}

extension String{
    
//    var ShiDianMD5: String!{return ("ShiDian_" + self).md5}
    
    /** 更好看的时间 */
    func timeString_weiboStyle(format format: String!)->String!{
        
        let format_temp = format ?? "MM-dd hh:mm:ss"
        
        var time_str_temp: String! = nil
    
        let time_Double = self.doubleValue
        
        if time_Double == nil {return "未知"}
        
        let minus: TimeInterval = NOW_TIME() - time_Double!
        
        if minus < 10 {time_str_temp = "刚刚"}
        else if minus >= 10 && minus < 60 { time_str_temp = "1分钟前"}
        else if minus >= 60 * 1 && minus < 60 * 2 { time_str_temp = "2分钟前"}
        else if minus >= 60 * 2 && minus < 60 * 5 { time_str_temp = "5分钟前"}
        else if minus >= 60 * 5 && minus < 60 * 10 { time_str_temp = "10分钟前"}
        else if minus >= 60 * 10 && minus < 60 * 30 { time_str_temp = "30分钟前"}
        else if minus >= 60 * 30 && minus < 60 * 60 { time_str_temp = "1小时前"}
        else if minus >= 60 * 60 * 1 && minus < 60 * 60 * 2 { time_str_temp = "2小时前"}
        else if minus >= 60 * 60 * 2 && minus < 60 * 60 * 5 { time_str_temp = "5小时前"}
        else if minus >= 60 * 60 * 5 && minus < 60 * 60 * 10 { time_str_temp = "10小时前"}
        else if minus >= 60 * 60 * 10 && minus < 60 * 60 * 24 { time_str_temp = "1天前"}
        else if minus >= 60 * 60 * 24 * 1 && minus < 60 * 60 * 24 * 2 { time_str_temp = "2天前"}
        else if minus >= 60 * 60 * 24 * 2 && minus < 60 * 60 * 24 * 7 { time_str_temp = "1周前"}
        else { time_str_temp = timestamp(format: format_temp)}
        
        return time_str_temp
    }
    

    /** 获取字符串长度 */
    var length: Int {return self.characters.count}
    
    
//    /** 截取字符串 */
//    
//    /** 从index开始 */
//    func cfSubstringFromIndex(index: Int) -> String?{
//
//        if(index >= self.length) {return nil}
//        self.index(after: <#T##String.Index#>)
//        let indexForStringDotIndex = self.startIndex.advancedBy(index)
//
//        return self.cfSubstringFromIndex(index: indexForStringDotIndex)
//    }
//
//    /** 用一个range截取 */
//    func cfSubstringWithRange(range: Range<Int>) -> String?{
//        
//        if(range.upperBound >= self.length) {return nil}
//        
//        let zeroIndexForStringDotIndex = self.startIndex
//        
//        let start = zeroIndexForStringDotIndex.advancedBy(range.lowerBound)
//        let end = zeroIndexForStringDotIndex.advancedBy(range.upperBound)
//        
//        let rangeForStringDotIndex = Range(start: start, end: end)
//        
//        return self.substringWithRange(rangeForStringDotIndex)
//    }
    
    
    var isNotEmpty: Bool{return !self.isEmpty}

    /** 时间戳转格式化的时间字符串 */
    func timestamp(format format: String) -> String {
        
        let t = Int(self.doubleValue ?? 0) ?? 0
        
        let date = NSDate(timeIntervalSince1970: Double(t))
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date as Date)
    }
    
    
    /** 获取字符串的size */
    func sizeCal(maxWidth maxWidth: CGFloat!, font: UIFont)->CGSize {
        
        let f = CGFloat.greatestFiniteMagnitude
        
        let size = CGSize(width: maxWidth ?? f,height: f)
    
        return  (self as NSString).boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil).size
    }
    
    
}

extension String {var doubleValue: Double? {return (self as NSString).doubleValue}}










