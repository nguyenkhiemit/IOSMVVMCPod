//
//  BaseViewController.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 9/30/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit
import RxSwift

public class BaseViewController<T>: UIViewController {

    let disposeBag = DisposeBag()
    
    var viewModel: T?
    
    init(viewModel: T) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        configure(viewModel: viewModel)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func configure(viewModel: T) {}
}
