//
//  Coordinator.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import UIKit
import RxSwift

class Coordinator<ResultType> {
    var presentedViewController: UIViewController!

    func coordinate<T>(to coordinator: Coordinator<T>) {
        coordinator.start()
    }

    func start() {
        fatalError()
    }
}

