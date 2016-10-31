//
//  ViewController.swift
//  tableViewTips
//
//  Created by 叶俊中 on 2016/10/29.
//  Copyright © 2016年 叶俊中. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: testTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for cell in tableview.visibleCells{
            let bottomView = cell.contentView.viewWithTag(2000)
            let image = bottomView?.viewWithTag(2001)
            image?.bounds.size.height = UIScreen.main.bounds.size.width
            let rect = bottomView?.convert((bottomView?.bounds)!, to: nil)
            var Y = -(rect?.origin.y)! * 200 / (UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.width + 200)
            if Y < -200{
                Y = -200
            }else if Y > 0{
                Y = 0
            }
            image?.frame.origin.y = Y
        }
    }

}

