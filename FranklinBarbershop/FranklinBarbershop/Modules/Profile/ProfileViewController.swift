//
//  ProfileViewController.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import UIKit
import RxSwift
import RxCocoa

class ProfileViewController: UIViewController {

    var viewModel: ProfileViewModelType!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}
