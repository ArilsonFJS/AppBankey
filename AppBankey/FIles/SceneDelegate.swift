//
//  SceneDelegate.swift
//  AppBankey
//
//  Created by Arilson Silva on 17/04/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
 
    var window: UIWindow?

    let loginViewController = LoginViewController()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginViewController.delegate = self
        
        window?.rootViewController = loginViewController
    }

}

extension SceneDelegate: LoginViewControllerDelegate {
    
    func didLogin() {
        print("Login feito")
    }
    
    
}

