//
//  LoginViewModel.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation


protocol LoginDelegate: AnyObject {
    func reject()
}

final class LoginViewModel {
    private var model: LoginModel
    private let coordinator: MainCoordinator
    
    weak var delegate: LoginDelegate?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.model = LoginModel(username: "", password: "")
    }
    
    public var password: String = ""
    public var login: String = ""
    
    public func listaCarrosScreen() {
        if password == "user" && login == "123" {
            coordinator.showListaCarrosScreen()
            
            
        } else {
            delegate?.reject()
        }
    }
}
