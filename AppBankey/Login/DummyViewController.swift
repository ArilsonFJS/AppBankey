//
//  DummyViewController.swift
//  AppBankey
//
//  Created by Arilson Silva on 15/09/25.
//
import UIKit

class DummyViewController: UIViewController {
    
    weak var delegate: LogoutDelegate?
    
    private lazy var logoutButton: UIButton = {
        let logoutButton = UIButton(type: .system)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        return logoutButton
    }()
    
    private lazy var label: UILabel = {
        let label =  UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension DummyViewController {
    
    func style() {
        label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        logoutButton.configuration = .filled()
        logoutButton.setTitle("Logout", for: [])
        logoutButton.addTarget(self, action: #selector(logoutButtonTapped), for: .primaryActionTriggered)
        
        stackView.axis = .vertical
        stackView.spacing = 20
    }
    
    func layout(){
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(logoutButton)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func logoutButtonTapped(_ sender: UIButton) {
        delegate?.didLogout()
    }
}
