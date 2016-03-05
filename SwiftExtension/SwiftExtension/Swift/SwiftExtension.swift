//
//  SwiftExtension.swift
//  SwiftExtension
//
//  Created by 冯成林 on 16/3/5.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import Foundation

extension NSObject {

    func convertToType<T>(cls: T.Type) ->T?{return self as? T}
}


