//
//  AppDelegate.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainCoordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.overrideUserInterfaceStyle = .light
        mainCoordinator = MainCoordinator(window: window!)
        mainCoordinator?.start()

        return true
    }
}

