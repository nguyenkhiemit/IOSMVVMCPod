//
//  ViewExtension.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 10/4/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

public extension UIView {
    
    typealias TapHandler = (() -> (Void))
    
    public func tap(handler: @escaping TapHandler) {
        let disposeBag = DisposeBag()
        let tapView = UITapGestureRecognizer()
        tapView.rx.event
            .subscribe({
                _ in
                handler()
            })
        .disposed(by: disposeBag)
        self.addGestureRecognizer(tapView)
    }
}
