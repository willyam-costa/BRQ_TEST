//
//  ListaCarrosViewController.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import UIKit

final class ListaCarrosViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    
    private let viewModel: CarrosListaViewModel
    
    init(viewModel: CarrosListaViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        tableView.dataSource = self
        tableView.delegate = self
        viewModel.delegate = self

        tableView.separatorInset = .zero
        
        view.addSubview(tableView)

        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true

        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive  = true
        

        tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true


    }

}

extension ListaCarrosViewController: CarrosListaViewModelDelegate {
    func reloadUI() {
        tableView.reloadData()
    }
}

extension ListaCarrosViewController: UITableViewDelegate {
    
}

extension ListaCarrosViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let carrosCell = ListaCarrosCell()
        carrosCell.idLabel.text = viewModel.id(at: indexPath.row) 
        carrosCell.nomeLabel.text = viewModel.nome(at: indexPath.row)
        carrosCell.tipoLabel.text = viewModel.tipo(at: indexPath.row)
        carrosCell.urlFotoImageView.image = UIImage(named: viewModel.urlFoto(at: indexPath.row))
        carrosCell.setUpCell()
        
        return carrosCell
    }
}
