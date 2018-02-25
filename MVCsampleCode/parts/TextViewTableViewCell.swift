//
//  TextViewTableViewCell.swift
//  MVCsampleCode
//
//  Created by 水野祥子 on 2018/02/25.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class TextViewTableViewCell: UITableViewCell {
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var sampleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static let height:CGFloat = 60
    
    func cellSet(Text:Int){
        self.sampleLabel.text = "\(Text)"
    }
}
