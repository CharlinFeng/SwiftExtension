
//
//  File.swift
//  WelCome
//
//  Created by 冯成林 on 15/7/9.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit

/** 自定义操作符 */
prefix operator ^ {}
protocol BasicDataProtocol{}
extension Int: BasicDataProtocol{}
extension Float: BasicDataProtocol{}
extension CGFloat: BasicDataProtocol{}
extension Double: BasicDataProtocol{}

prefix operator ^^ {}
protocol CGDataProtocol{}
extension CGRect: CGDataProtocol{}
extension CGSize: CGDataProtocol{}
extension CGPoint: CGDataProtocol{}


/** NSValue快速包装：Int、Float、Double */
prefix func ^<T: BasicDataProtocol>(data: T) -> NSNumber{
    
    var value: NSNumber?
    
    //Int
    if data is Int { value = NSNumber(value: data as! Int)}
    
    //Float
    if data is Float { value = NSNumber(value: data as! Float)}
    //CGFloat
    if data is CGFloat { value = NSNumber(value: Float(data as! CGFloat))}
    
    
    //Double
    if data is Double { value = NSNumber(value: data as! Double)}
    
    return value!
}


/** NSValue快速包装：CGRect、CGSize、CGPoint */
prefix func ^^<T: CGDataProtocol>(data: T) -> NSValue{
    
    var value: NSValue?
    
    //CGRect
    if data is CGRect { value = NSValue(cgRect: data as! CGRect)}
    
    //CGSize
    if data is CGSize { value = NSValue(cgSize: data as! CGSize)}
    
    //CGPoint
    if data is CGPoint { value = NSValue(cgPoint: data as! CGPoint)}
    
    return value!
}



