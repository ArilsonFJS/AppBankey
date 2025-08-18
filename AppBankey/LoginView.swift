//
//  BankeyView.swift
//  AppBankey
//
//  Created by Arilson Silva on 13/08/25.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    private lazy var userNameTextField: UITextField = {
        let userNameTextField = UITextField()
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "User Name"
        return userNameTextField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        return passwordTextField
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .leading
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            userNameTextField.placeholder = "Inform your user"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
