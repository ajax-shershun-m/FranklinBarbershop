//
//  AppointmentsCoordinator.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import UIKit
import RxSwift

class AppointmentsCoordinator: Coordinator<Void> {
	private weak var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
		let viewController = AppointmentsViewController()
        viewController.viewModel = AppointmentsViewModel(coordinator: self)
        presentedViewController = viewController
    }
}
