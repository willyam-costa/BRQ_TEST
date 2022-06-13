//
//  Coordinator.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}
