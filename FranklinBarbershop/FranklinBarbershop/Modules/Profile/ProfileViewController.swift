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

    private lazy var profileBackgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bc_profile")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black

        self.view.addSubview(profileBackgroundImage)

        NSLayoutConstraint.activate([
            profileBackgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            profileBackgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            profileBackgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            profileBackgroundImage.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 3)
        ])
    }
}
