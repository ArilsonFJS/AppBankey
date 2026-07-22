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
    let onboardingContainerViewController = OnboardingContainerViewController()
    let dummyViewController = DummyViewController()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginViewController.delegate = self
        onboardingContainerViewController.delegate = self
        dummyViewController.logoutDelegate = self
        
        window?.rootViewController = loginViewController
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
        UIView.transition(with: window,  duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
}

extension SceneDelegate: LoginViewControllerDelegate  {

    func didLogin() {
        if LocalState.hasOnboarded {
            setRootViewController(dummyViewController)
        } else {
            setRootViewController(onboardingContainerViewController)
        }
        
    }
}

extension SceneDelegate: OnboardingContainerViewControllerDelegate {
    
    func didFinishOnboarding() {
        LocalState.hasOnboarded = true
        setRootViewController(dummyViewController)
    }
}

extension SceneDelegate: LogoutDelegate {
    func didLogout() {
        setRootViewController(loginViewController)
    }
}
