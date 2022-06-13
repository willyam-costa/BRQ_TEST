//
//  MainCoordinator.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = LoginViewModel(coordinator: self)
        let vc = LoginViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showListaCarrosScreen() {
        var carros: [CarrosModel] = []
        /*
         Falta realizar a implementação de chamada de dados da API para serem jogadas em Array de carros
         */
        
        let viewModel = CarrosListaViewModel(coordinator: self, model: carros)
        
        let vc = ListaCarrosViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
        
    }
}
