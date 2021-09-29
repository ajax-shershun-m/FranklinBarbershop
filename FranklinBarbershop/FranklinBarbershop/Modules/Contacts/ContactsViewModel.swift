//
//  ContactsViewModel.swift
//  FranklinBarbershop
//
//  Created by Maksim Shershun on 29.09.2021.
//


import RxSwift

protocol ContactsViewModelType {
    var coordinator: ContactsCoordinator { get }
}

class ContactsViewModel: ContactsViewModelType {
    
    // MARK: - Inputs
    var coordinator: ContactsCoordinator
    
    // MARK: - Outputs
    
    init(coordinator: ContactsCoordinator) {
        self.coordinator = coordinator
    }
    
}
