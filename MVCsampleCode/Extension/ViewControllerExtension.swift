//
//  UIViewControllerExtension.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

extension UIViewController{
    func defoAlert() -> UIAlertController{
        let alert: UIAlertController = UIAlertController(title: "アラート表示", message: "保存してもいいですか？", preferredStyle:  .alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler:{
            (action: UIAlertAction!) -> Void in
            print("OK")
        })
        alert.addAction(defaultAction)
        return alert
    }
}

