//
//  HomeViewModel.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//


import RxSwift

protocol HomeViewModelType {
    var coordinator: HomeCoordinator { get }
}

class HomeViewModel: HomeViewModelType {
    
    // MARK: - Inputs
    var coordinator: HomeCoordinator
    
    // MARK: - Outputs
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
}
