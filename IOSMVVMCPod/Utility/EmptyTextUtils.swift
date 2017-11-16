//
//  EmptyTextUtils.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 10/30/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

public class EmptyTextUtils: UIView {
    
    public static func loadLib() -> UIEmptyText? {
        return Bundle.main.loadNibNamed("UIEmptyText", owner: self, options: nil)?.first as? UIEmptyText
    }
    
    public static func show(view: UIView) {
        if let contentView = loadLib() {
            contentView.frame = view.bounds
            contentView.tag = 10000
            view.addSubview(contentView)
        }
    }
    
    public static func hidden(view: UIView) {
        if let contentView = view.viewWithTag(10000) {
            contentView.removeFromSuperview()
        }
    }

}
