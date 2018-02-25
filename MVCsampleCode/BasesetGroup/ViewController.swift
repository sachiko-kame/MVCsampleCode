//
//  ViewController.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewControllerModel:ViewControllerModel = ViewControllerModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func loadView() {
        self.view = ViewControllerView(model: viewControllerModel)
    }


}

