//
//  ProfileViewModel.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import RxSwift

protocol ProfileViewModelType {
    var coordinator: ProfileCoordinator { get }
}

class ProfileViewModel: ProfileViewModelType {

    // MARK: - Inputs


    // MARK: - Outputs

    var coordinator: ProfileCoordinator

    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }
}

