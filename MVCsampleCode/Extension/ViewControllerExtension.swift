//
//  UIViewControllerExtension.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

extension UIViewController{
    func defoAlert(Alertdo:@escaping ()->()) -> UIAlertController{
        let alert: UIAlertController = UIAlertController(title: "アラート表示", message: "Log出しますか？", preferredStyle:  .alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler:{
            (action: UIAlertAction!) -> Void in
            Alertdo()
        })
        
        let CancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel, handler:{
            (action: UIAlertAction!) -> Void in
            print("cancel")
        })
        
        alert.addAction(defaultAction)
        alert.addAction(CancelAction)
        return alert
    }
}

