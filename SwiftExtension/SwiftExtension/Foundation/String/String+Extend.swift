//
//  String+Extend.swift
//  WelCome
//
//  Created by 冯成林 on 15/7/8.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit

extension String{

    /** 获取字符串长度 */
    var length: Int {return count(self)}
    
    
    /** 截取字符串 */
    
    /** 从index开始 */
    func cfSubstringFromIndex(index: Int) -> String?{

        if(index >= self.length) {return nil}
        
        var indexForStringDotIndex = advance(self.startIndex, index)

        return self.substringFromIndex(indexForStringDotIndex)
    }

    /** 用一个range截取 */
    func cfSubstringWithRange(range: Range<Int>) -> String?{
        
        if(range.endIndex >= self.length) {return nil}
        
        let zeroIndexForStringDotIndex = self.startIndex
        
        let start = advance(zeroIndexForStringDotIndex, range.startIndex)
        let end = advance(zeroIndexForStringDotIndex, range.endIndex)
        
        let rangeForStringDotIndex = Range(start: start, end: end)
        
        return self.substringWithRange(rangeForStringDotIndex)
    }
    
    
    var isNotEmpty: Bool{return !self.isEmpty}

    /** 时间戳转格式化的时间字符串 */
    func timestamp(#format: String) -> String {
        
        let date = NSDate(timeIntervalSince1970: Double(self.toInt()!))
        
        let formatter = NSDateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.stringFromDate(date)
    }
}











