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

    private var servicesCoordinator: ServicesCoordinator!
    private var mastersCoordinator: MastersCoordinator!
    private var contactsCoordinator: ContactsCoordinator!
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
        servicesCoordinator = ServicesCoordinator(navigationController: navigationController)
        servicesCoordinator.start()
        let servicesVC = servicesCoordinator.presentedViewController ?? UIViewController()
        servicesVC.tabBarItem = UITabBarItem(title: "Services", image: UIImage(named: "ic_services"), selectedImage: UIImage(named: "ic_services"))

        mastersCoordinator = MastersCoordinator(navigationController: navigationController)
        mastersCoordinator.start()
        let mastersVC = mastersCoordinator.presentedViewController ?? UIViewController()
        mastersVC.tabBarItem = UITabBarItem(title: "Masters", image: UIImage(named: "ic_masters"), selectedImage: UIImage(named: "ic_masters"))

        contactsCoordinator = ContactsCoordinator(navigationController: navigationController)
        contactsCoordinator.start()
        let contactsVC = contactsCoordinator.presentedViewController ?? UIViewController()
        contactsVC.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(named: "ic_contacts"), selectedImage: UIImage(named: "ic_contacts"))

        profileCoordinator = ProfileCoordinator(navigationController: navigationController)
        profileCoordinator.start()
        let profileVC = profileCoordinator.presentedViewController ?? UIViewController()
        profileVC.tabBarItem = UITabBarItem(title: "Account", image: UIImage(named: "ic_account"), selectedImage: UIImage(named: "ic_account"))

        tabBarController.setViewControllers([servicesVC, mastersVC, contactsVC, profileVC], animated: false)
        tabBarController.selectedIndex = 0
    }
}

