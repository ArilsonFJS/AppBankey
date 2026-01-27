//
//  BankeyView.swift
//  AppBankey
//
//  Created by Arilson Silva on 13/08/25.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    lazy var userNameTextField: UITextField = {
        let userNameTextField = UITextField()
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "User Name"
        return userNameTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.backgroundColor = .secondarySystemBackground
        return stackView
    }()
    
    private lazy var dividerView: UIView = {
        let dividerView = UIView()
        dividerView.backgroundColor = .separator // cor padrão de divisória no iOS
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.heightAnchor.constraint(equalToConstant: 1.0).isActive = true
        return dividerView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LoginView {
    
    func style () {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 5
        clipsToBounds = true
    }
    
    func layout() {
        addElements()
        setConstraints()
        
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
    }
    
    func addElements() {
        addSubview(stackView)
    }
    
    func setConstraints () {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ])
        
        
    }
}

//MARK: - UITextFieldDelegate
extension LoginView: UITextFieldDelegate {
    
    //Chamado quando é pressionado o Enter do teclado para que seja fechado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Fecha o teclado
        return true
    }
    
    //Chamado antes do campo de texto terminar a edição
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    //Chamado depois que o campo de texto efetivamente terminou a edição
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
