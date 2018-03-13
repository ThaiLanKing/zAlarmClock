//
//  ViewController.swift
//  Alarm-Swift
//
//  Created by zyh on 17/3/13.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit
import ChameleonFramework
import SnapKit

class ViewController: UIViewController {

    let testLbl:UILabel = {
        let tempLbl = UILabel()
        tempLbl.backgroundColor = FlatPink()
        tempLbl.textColor = .red
        tempLbl.text = "test snapKit"
        tempLbl.textAlignment = .center
        
        return tempLbl
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(testLbl)
        
        testLbl.snp.makeConstraints { (make) in
            //make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(20, 20, 20, 20))
            make.top.equalTo(self.view).offset(100)
            make.left.right.equalTo(self.view)
            make.height.equalTo(100)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

