//
//  ViewControllerView.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewControllerView: UIView {

    required init(model: ViewControllerModel) {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //大きさの調節.Viewの操作を行う
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
