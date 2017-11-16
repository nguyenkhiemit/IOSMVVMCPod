//
//  BaseCoordinator.swift
//  IOSBaseMVVMC
//
//  Created by Nguyen on 9/29/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import UIKit

public class BaseCoordinator {
    
    var childCoordinators: [BaseCoordinator] = []
    
    var navigationController: UINavigationController?
    
    public init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    public func start() {}
}
