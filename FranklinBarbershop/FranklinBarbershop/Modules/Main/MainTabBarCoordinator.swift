//
//  MainTabBarCoordinator.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import UIKit
import RxSwift

class MainCoordinator: Coordinator<Void> {
    private let window: UIWindow!
    private var navigationController: UINavigationController!

    private var homeCoordinator: HomeCoordinator!
    private var appointmentCoordinator: AppointmentsCoordinator!
    private var profileCoordinator: ProfileCoordinator!

    init(window: UIWindow) {
        self.window = window
    }

    override func start() {

        let tabBarController = MainTabBarController()

        self.navigationController = UINavigationController(rootViewController: tabBarController)

        presentedViewController = navigationController

        setupTabs(tabBarController: tabBarController)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    private func setupTabs(tabBarController: UITabBarController) {
        homeCoordinator = HomeCoordinator(navigationController: navigationController)
        homeCoordinator.start()
        let homeVC = homeCoordinator.presentedViewController ?? UIViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "tb_home"), selectedImage: UIImage(named: "face.tb_home"))

        appointmentCoordinator = AppointmentsCoordinator(navigationController: navigationController)
        appointmentCoordinator.start()
        let appointmentVC = appointmentCoordinator.presentedViewController ?? UIViewController()
        appointmentVC.tabBarItem = UITabBarItem(title: "Appointments", image: UIImage(named: "tb_appointments"), selectedImage: UIImage(named: "tb_appointments"))

        profileCoordinator = ProfileCoordinator(navigationController: navigationController)
        profileCoordinator.start()
        let profileVC = profileCoordinator.presentedViewController ?? UIViewController()
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "tb_profile"), selectedImage: UIImage(named: "tb_profile"))

        tabBarController.setViewControllers([homeVC, appointmentVC, profileVC], animated: false)
        tabBarController.selectedIndex = 0
    }
}

