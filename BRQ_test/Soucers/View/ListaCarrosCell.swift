//
//  ListaCarrosCell.swift
//  BRQ_test
//
//  Created by victor willyam on 6/13/22.
//

import Foundation
import UIKit

final class ListaCarrosCell: UITableViewCell {
    
    public lazy var idLabel: UILabel = {
        let idLabel = UILabel(frame: .zero)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        return idLabel
    }()
    
    public lazy var nomeLabel: UILabel = {
        let nomeLabel = UILabel(frame: .zero)
        nomeLabel.translatesAutoresizingMaskIntoConstraints = false
        return nomeLabel
    }()
    
    public lazy var tipoLabel: UILabel = {
        let tipoLabel = UILabel(frame: .zero)
        tipoLabel.translatesAutoresizingMaskIntoConstraints = false
        return tipoLabel
    }()
    
    public lazy var descricaoLabel: UILabel = {
        let descricaoLabel = UILabel(frame: .zero)
        descricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        return descricaoLabel
    }()
    
    public lazy var urlFotoImageView: UIImageView = {
        let urlFotoLabel = UIImageView(frame: .zero)
        urlFotoLabel.translatesAutoresizingMaskIntoConstraints = false
        return urlFotoLabel
    }()
//    public lazy var urlVideoImageView: UILabel = {
//        let urlVideoLabel = UILabel(frame: .zero)
//        urlVideoLabel.translatesAutoresizingMaskIntoConstraints = false
//        return urlVideoLabel
//    }()
    public lazy var latitudeLabel: UILabel = {
        let latitudeLabel = UILabel(frame: .zero)
        latitudeLabel.translatesAutoresizingMaskIntoConstraints = false
        return latitudeLabel
    }()
    public lazy var longitudeLabel: UILabel = {
        let longitudeLabel = UILabel(frame: .zero)
        longitudeLabel.translatesAutoresizingMaskIntoConstraints = false
        return longitudeLabel
    }()
    
    func setUpCell() {
        idLabel.textAlignment = .right
        
        self.addSubview(idLabel)
        self.addSubview(nomeLabel)
        self.addSubview(tipoLabel)
        self.addSubview(urlFotoImageView)
        
        urlFotoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        urlFotoImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        urlFotoImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        nomeLabel.leadingAnchor.constraint(equalTo: urlFotoImageView.trailingAnchor, constant: 10).isActive = true
        nomeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nomeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        tipoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        tipoLabel.widthAnchor.constraint(equalToConstant: 125).isActive = true
        tipoLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }
    
}
