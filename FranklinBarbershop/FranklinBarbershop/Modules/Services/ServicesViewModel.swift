//
//  ServicesViewModel.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//


import RxSwift

protocol ServicesViewModelType {
    var coordinator: ServicesCoordinator { get }
}

class ServicesViewModel: ServicesViewModelType {
    
    // MARK: - Inputs
    var coordinator: ServicesCoordinator
    
    // MARK: - Outputs
    
    init(coordinator: ServicesCoordinator) {
        self.coordinator = coordinator
    }
    
}
