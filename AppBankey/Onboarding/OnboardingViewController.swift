//
//  OnboardingViewController.swift
//  AppBankey
//
//  Created by Arilson Silva on 03/09/25.
//
import UIKit
class OnboardingViewController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
    }
}

extension OnboardingViewController {
    
    func style(){
        stackView.axis = .vertical
        stackView.spacing = 20
        
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "delorean")
        
        label.textAlignment = .center
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = "Bankey is faster, easier to use, and has a brand new look and fell that will make you fell like you are back in 1989"
        label.font = UIFont.preferredFont(forTextStyle: .title3)
    }
    
    func layout(){
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
    }
}
