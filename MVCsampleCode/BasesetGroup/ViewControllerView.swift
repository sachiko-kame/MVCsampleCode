//
//  ViewControllerView.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewControllerView: UIView {

    let tableView = UITableView()
    let refreshControl:UIRefreshControl = UIRefreshControl()
    
    required init(model: ViewControllerModel) {
        super.init(frame: CGRect.zero)
        
        self.tableView.register(cellType: TextViewTableViewCell.self)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        self.tableView.dataSource = model
        self.tableView.delegate = model
        
        self.tableView.addSubview(refreshControl)
        self.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //大きさの調節.Viewの操作を行う
    override func layoutSubviews() {
        super.layoutSubviews()
        tableView.frame = self.frame
    }

}
