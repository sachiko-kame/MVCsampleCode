//
//  ViewControllerModel.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewControllerModel: NSObject {
    var tapded:(() -> ())?
    var sampleArray = [1, 2, 3]
}

extension ViewControllerModel:UITableViewDelegate{
    //celltap
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //cellheight
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TextViewTableViewCell.height
    }
    
}

extension ViewControllerModel:UITableViewDataSource{
    
    @objc func buttonTap(sender: UIButton) {
        print("🐥")
        self.tapded!()
    }
    
    //cellcount
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleArray.count
    }
    
    //cellmade
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(with: TextViewTableViewCell.self, for: indexPath)
        cell.tapButton.addTarget(self, action: #selector(buttonTap(sender:)), for: .touchUpInside)
        cell.cellSet(Text:sampleArray[indexPath.row])
        return cell
    }
}

