//
//  UIButton+ActionSelector.swift
//  Alarm-Swift
//
//  Created by zyh on 2018/3/12.
//  Copyright © 2018年 zyh. All rights reserved.
//

import Foundation
import UIKit

private var key: Void?

typealias ActionClosure = (_ sender:Any) -> Void

extension UIButton {
    var actionSelector : ActionClosure? {
        get {
            if let obj = objc_getAssociatedObject(self, &key) as? ActionClosure {
                return obj
            }
            return nil
        }
        set {
            objc_setAssociatedObject(self, &key, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
        }
    }
    
    func addActionClosure(_ actionClosure:@escaping ActionClosure) -> Void {
        self.actionSelector = actionClosure
        self.addTarget(self, action: #selector(btnTapped(_:)), for: .touchUpInside)
    }
    
    func btnTapped(_ sender:Any) -> Void {
        if let actionClosure = self.actionSelector {
            actionClosure(sender)
        }
    }
}
