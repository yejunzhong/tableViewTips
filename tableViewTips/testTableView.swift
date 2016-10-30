//
//  testTableView.swift
//  tableViewTips
//
//  Created by 叶俊中 on 2016/10/30.
//  Copyright © 2016年 叶俊中. All rights reserved.
//

import UIKit

class testTableView: UITableView {

    var VM = testTableViewModel()
    override func awakeFromNib() {
        VM.target = self
        self.delegate = VM
        self.dataSource = VM
    }
}
