//
//  ViewController.swift
//  SwiftExtension
//
//  Created by 冯成林 on 15/9/5.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageV = UIImageView(frame: CGRectMake(0, 0, 100, 100))
        
        let img = UIImage.imageBuildWithColor(UIColor.redColor(), size: CGSizeMake(100, 100), isRound: true)
        
        imageV.image = img
        
        view.addSubview(imageV)
    }


}

