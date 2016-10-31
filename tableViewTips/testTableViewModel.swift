//
//  testTableViewModel.swift
//  tableViewTips
//
//  Created by 叶俊中 on 2016/10/30.
//  Copyright © 2016年 叶俊中. All rights reserved.
//

import UIKit

class testTableViewModel: NSObject,UITableViewDelegate,UITableViewDataSource {
    var target:testTableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = self.target.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.size.width - 200
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for cell in self.target.visibleCells{
            let bottomView = cell.contentView.viewWithTag(2000)
            let image = bottomView?.viewWithTag(2001)
            if image?.bounds.size.height != UIScreen.main.bounds.size.width{
                image?.bounds.size.height = UIScreen.main.bounds.size.width
            }
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
