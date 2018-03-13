//
//  UILabel+zQuickCreate.swift
//  Alarm-Swift
//
//  Created by zyh on 2018/3/12.
//  Copyright © 2018年 zyh. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    class func labelWith(font:UIFont, textColor:UIColor, textAlignment:NSTextAlignment) -> UILabel {
        let lbl = UILabel()
        lbl.font = font
        lbl.textColor = textColor
        lbl.textAlignment = textAlignment
        return lbl
    }
    
    class func labelWith(fontSize:CGFloat, textColor:UIColor) -> UILabel {
        let lbl = UILabel.labelWith(font: UIFont.systemFont(ofSize: fontSize),
                                    textColor: textColor,
                                    textAlignment: NSTextAlignment.left)
        return lbl
    }
    
    class func labelCenterAlignmentWith(fontSize:CGFloat, textColor:UIColor) -> UILabel {
        let lbl = UILabel.labelWith(font: UIFont.systemFont(ofSize: fontSize),
                                    textColor: textColor,
                                    textAlignment: NSTextAlignment.center)
        return lbl
    }
}
