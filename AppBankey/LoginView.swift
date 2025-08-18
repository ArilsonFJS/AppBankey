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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
        
        userNameTextField.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}

extension LoginView {
    
    func style () {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .blue
    }
    
    func layout() {
        
    }
}

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something ..."
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
