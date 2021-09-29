//
//  AppointmentsViewModel.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//

import RxSwift

protocol AppointmentsViewModelType {
    var coordinator: AppointmentsCoordinator { get }
}

class AppointmentsViewModel: AppointmentsViewModelType {
    
    // MARK: - Inputs
    var coordinator: AppointmentsCoordinator
    
    // MARK: - Outputs
    
    init(coordinator: AppointmentsCoordinator) {
        self.coordinator = coordinator
    }
}
