//
//  Loading.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 10/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import UIKit

public class UILoading: UIView {
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    public func show() {
        activityIndicatorView.startAnimating()
    }
    
    public func dismiss() {
        activityIndicatorView.stopAnimating()
    }
}
