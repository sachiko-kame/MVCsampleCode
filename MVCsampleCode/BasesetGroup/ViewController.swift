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
        
        viewControllerModel.tapded = {
            print("CellのButton押された")
            self.present(self.defoAlert(Alertdo:{
                self.logshow()
            }), animated: true, completion: nil)
        }
        
        (self.view as! ViewControllerView).refreshControl.addTarget(self, action: #selector(tableUpdate(sender:)), for: .valueChanged)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func loadView() {
        self.view = ViewControllerView(model: viewControllerModel)
    }
    
    func logshow(){
        print("ログ🐊")
    }
    
    @objc func tableUpdate(sender:UIRefreshControl){
        viewControllerModel.sampleArraycahnge()
        (self.view as! ViewControllerView).refre()
    }
    
    
    

}

