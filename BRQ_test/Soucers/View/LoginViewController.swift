//
// LoginViewController.swift
//  BRQ_test
//
//  Created by victor willyam on 6/12/22.
//

import UIKit



final class  LoginViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "imageBack")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var loginLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        
       return view
    }()
    
    private lazy var passwordLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        
        return view
    }()
    
    private lazy var loginTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    private lazy var loginButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        
       return view
    }()
    
    private let viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: - Image
        view.insertSubview(imageView, at: 0)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        view.backgroundColor = .white
        
        loginLabel.text = "Login"
        loginLabel.textAlignment = .center
        loginLabel.backgroundColor = .systemBlue
        loginLabel.textColor = .white
        loginLabel.layer.cornerRadius = 10
        loginLabel.layer.masksToBounds = true
        
        passwordLabel.text = "Senha"
        passwordLabel.textAlignment = .center
        passwordLabel.backgroundColor = .systemBlue
        passwordLabel.textColor = .white
        passwordLabel.layer.cornerRadius = 10
        passwordLabel.layer.masksToBounds = true
        
        loginTextField.backgroundColor = .gray
        loginTextField.textColor = .white
        loginTextField.placeholder = "Digite o usuário"
        loginTextField.textAlignment = .center
        loginTextField.autocapitalizationType = .none
        loginTextField.layer.cornerRadius = 10
        
        passwordTextField.backgroundColor = .gray
        passwordTextField.textColor =  .black
        passwordTextField.placeholder = "Digite a senha.."
        passwordTextField.textAlignment = .center
        passwordTextField.autocapitalizationType = .none
        passwordTextField.layer.cornerRadius = 10
        
        
        loginButton.setTitle("Logar", for: .normal)
        loginButton.backgroundColor = .blue
        loginButton.addTarget(self, action: #selector(login), for: .touchDown)
        
        
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        //MARK: - Constraint's Login
        loginLabel.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant:
                                                -100).isActive = true
        loginLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        loginLabel.trailingAnchor.constraint(equalTo: self.loginTextField.leadingAnchor, constant: -10).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: 40).isActive =  true
        
        loginTextField.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -100).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: self.loginLabel.trailingAnchor, constant: -10).isActive = true
        loginTextField.widthAnchor.constraint(equalTo: self.loginLabel.widthAnchor).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
                
        
        passwordLabel.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 30).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: self.loginTextField.leadingAnchor, constant: -10).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.loginLabel.trailingAnchor, constant: 10).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: self.loginLabel.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        
    }
    @objc private func login() {
        let loginConnection = LoginConnection()
        loginConnection.connect(username: loginTextField.text ?? "", password: passwordTextField.text ?? "")
        viewModel.listaCarrosScreen()
        print("clicou")
    }
}

// Alerta não funcionando

extension LoginViewController: LoginDelegate {
    func reject() {
        
    }
}

