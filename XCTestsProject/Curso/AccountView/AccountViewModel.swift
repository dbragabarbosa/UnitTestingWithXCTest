//
//  AccountViewModel.swift
//  Curso
//
//  Created by Bruno Faganello Neto on 14/06/20.
//  Copyright © 2020 Bruno Faganello. All rights reserved.
//

import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTap()
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ())
    
    var instructionText: String { get }
    var status: String { get set }
}

class AccountViewModel {
    
    private let shouldUseLocation: Bool
    private let model: AccountModel
    private let provider: ProviderProtocol
    
    var status: String
    
    init(shouldUseLocation: Bool, model: AccountModel, provider: ProviderProtocol = Provider()) {
        self.shouldUseLocation = shouldUseLocation
        self.model = model
        self.provider = provider
        self.status = ""
    }
    
    func getJoke() {
        provider.getJoke { result, error in
            if error != nil {
                self.status = "Erro"
                return
            }
            self.status = result![0]
        }
    }
}

extension AccountViewModel: AccountViewModelProtocol {
    
    var instructionText: String {
        if shouldUseLocation {
            return model.instruction + " com localização"
        }
        return model.instruction
    }
    
    func loginButtonTap() {
        print("Login Realizado com Sucesso")
    }
    
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ()) {
        
        if shouldUseLocation {
            askUserPermission()
            completion()
            return
        }
        showAlert()
        completion()
    }
}
