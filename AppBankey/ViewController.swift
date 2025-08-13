//
//  ViewController.swift
//  AppBankey
//
//  Created by Arilson Silva on 13/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let bankeyView = BankeyView()
    
    override func loadView() {
        self.view = bankeyView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

