//
//  UITextField+Extend.swift
//  WelCome
//
//  Created by 冯成林 on 15/7/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import Foundation
import UIKit



/** textField检查 */
extension UITextField{
    
    class TFCheckModel{
        
        let textField: UITextField
        let desc: String
        
        init(textField: UITextField, desc: String){
            
            self.textField = textField
            self.desc = desc
        }
        
    
    }
    

    /** 检查 */
    class func checkWithTFCheckModels(modelsClosure: () -> [TFCheckModel]) -> String {
        
        var errorMsg: String = ""
    
        //执行
        let models = modelsClosure()
    
        /** 数组遍历 */
        for (index: Int, model: TFCheckModel) in enumerate(models){
            if model.textField.text.isEmpty {errorMsg = model.desc; break}
        }
        
        if errorMsg.isNotEmpty {errorMsg+="为空"}
        
        return errorMsg
    }
    
    /** 添加一个键盘 */
    func addKeyBoardTool(#explain: String){
        
        let av = AccessoryView.instance()
        av.hideCancelBtn = true
        av.msgLabel.text = explain
        av.doneBtnActionClosure={self.endEditing(true)}
        self.inputAccessoryView = av
    }
}

extension UISearchBar{
    /** 添加一个键盘 */
    func addKeyBoardTool(#explain: String){
        
        let av = AccessoryView.instance()
        av.hideCancelBtn = true
        av.msgLabel.text = explain
        av.doneBtnActionClosure={self.endEditing(true)}
        self.inputAccessoryView = av
    }
}






