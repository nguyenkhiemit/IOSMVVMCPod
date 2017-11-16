//
//  Utils.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 9/29/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import UIKit

public func getWidthScreen() -> CGFloat {
    let sizeRect = UIScreen.main.bounds
    return sizeRect.width
}

public func getHeightScreen() -> CGFloat {
    let sizeRect = UIScreen.main.bounds
    return sizeRect.height
}
