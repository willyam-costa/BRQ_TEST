//
//  CarrosListaConnection.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation
import Alamofire



class CarrosListaConnection {
    private let url = "https://carros-springboot.herokuapp.com/api/v2/carros"    
    var delegate: ListaCarroDelegate
    init(delegate: ListaCarroDelegate) {
        self.delegate = delegate
    }
    
    func connect(){
        AF.request(url, method: .post).responseDecodable(of: [CarrosModel].self) { response in
            guard let carros = response.value
            else {return}
            self.delegate.setList(lista: carros )
            
        }
    }
}

