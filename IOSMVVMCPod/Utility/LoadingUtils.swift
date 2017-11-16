//
//  LoadingUtils.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 10/12/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

public class LoadingUtils: NSObject {
    
    public static func loadNib() -> UILoading? {
        return Bundle.main.loadNibNamed("UILoading", owner: self, options: nil)?.first as? UILoading
    }
    
    public static func show() {
        guard let window = UIApplication.shared.keyWindow else {
            return
        }
        if let contentView = loadNib() {
            contentView.frame = window.bounds
            contentView.tag = 1000
            contentView.activityIndicatorView.startAnimating()
            window.addSubview(contentView)
        }
    }
    
    public static func close() {
        guard let window = UIApplication.shared.keyWindow else {
            return
        }
        if let contentView = window.viewWithTag(1000) {
            contentView.removeFromSuperview()
        }
    }
    
}
