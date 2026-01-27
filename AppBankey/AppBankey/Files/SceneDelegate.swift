//
//  SceneDelegate.swift
//  AppBankey
//
//  Created by Arilson Silva on 13/08/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let loginViewController = LoginViewController()
    let dummyViewController = DummyViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        loginViewController.delegate = self
        dummyViewController.delegate = self
        
        //window?.rootViewController = loginViewController
        window?.rootViewController = onboardingContainerViewController
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
    }
}

extension SceneDelegate {
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
}

extension SceneDelegate: LoginViewControllerDelegate, LogoutDelegate {
    
    func didLogout() {
        setRootViewController(loginViewController)
    }
    
    
    func didLogin() {
        if LocalState.hasOnBoarded {
            setRootViewController(dummyViewController)
        } else {
            
        }
        
    }
    
    func didFinishOnboarding() {
        LocalState.hasOnBoarded =  true
        setRootViewController(dummyViewController)
    }
}
