//
//  LoginConnection.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import Foundation
import Alamofire

struct UserLoginResponse: Codable{
    let id: Int?
    let login: String?
    let email: String?
    let urlFoto: String?
    let token: String?
    let roles: [String]?
}

class LoginConnection {
    private let url = "https://carros-springboot.herokuapp.com/api/v2/login"
      
      func connect(username: String, password: String){
          let user = LoginModel(username: username, password: password)
          AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default).responseDecodable(of: UserLoginResponse.self) { response in
              print("######## resposta #########")
              print(response)
          }
      }     
  
}
