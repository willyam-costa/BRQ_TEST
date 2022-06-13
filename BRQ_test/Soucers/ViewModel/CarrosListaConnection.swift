//
//  CarrosListaConnection.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation
import Alamofire


struct CarrosListaResponse: Codable {
    
    let id: Int?
    let nome: String?
    let tipo: String?
    let descricao: String?
    let urlFoto: String?
    let urlVideo: String?
    let latitude: String?
    let longitude: String?
    
}

class CarrosListaConnection {
    private let url = "https://carros-springboot.herokuapp.com/api/v2/carros"    
    
    func connect(id: Int,
                 nome: String,
                 tipo: String,
                 descricao: String,
                 urlFoto: String,
                 urlVideo: String,
                 latitude: String,
                 longitude: String){
        let carrosDados = CarrosModel(id: id,
                               nome: nome,
                               tipo: tipo,
                               descricao: descricao,
                               urlFoto: urlFoto,
                               urlVideo: urlVideo,
                               latitude: latitude,
                               longitude: longitude)
        AF.request(url, method: .post, parameters: carrosDados, encoder: JSONParameterEncoder.default).responseDecodable(of: CarrosListaResponse.self) { response in
            print("######## resposta #########")
            print(response)
        }
    }
}
