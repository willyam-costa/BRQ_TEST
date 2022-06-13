//
//  CarrosListaViewModel.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation

protocol CarrosListaViewModelDelegate: AnyObject {
    func reloadUI()
}

final class CarrosListaViewModel {
    private let coordinator: MainCoordinator
    private var model: [CarrosModel] {
        didSet {
            delegate?.reloadUI()
        }
    }
    weak var delegate: CarrosListaViewModelDelegate?
    
    init(coordinator: MainCoordinator, model: [CarrosModel]) {
        self.coordinator = coordinator
        self.model = model
    }
    public func id(at index: Int) -> Int {
        return model[index].id ?? 0
    }
    
    public func nome(at index: Int) -> String {
        return model[index].nome ?? ""
    }
    
    public func tipo(at index: Int) -> String {
        return model[index].tipo ?? ""
        
    }
    public func descricao(at index: Int) -> String {
        return model[index].descricao ?? ""
    }
    
    public func urlFoto(at index: Int) -> String {
        return model[index].urlFoto ?? ""
    }
    
    func urlVideo(at index: Int) -> String {
        return model[index].urlVideo ?? ""
        
    }
    
    func latitude(at index: Int) -> String {
        return model[index].latitude ?? ""
        
    }
    func longitude(at index: Int) -> String {
        return model[index].longitude ?? ""
    }
    
    public func numberOfRows() -> Int {
        return model.count
    }
}
