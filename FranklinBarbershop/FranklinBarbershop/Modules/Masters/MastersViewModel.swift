//
//  MastersViewModel.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import RxSwift

protocol MastersViewModelType {
    var coordinator: MastersCoordinator { get }
}

class MastersViewModel: MastersViewModelType {
    
    // MARK: - Inputs
    var coordinator: MastersCoordinator
    
    // MARK: - Outputs
    
    init(coordinator: MastersCoordinator) {
        self.coordinator = coordinator
    }
}
