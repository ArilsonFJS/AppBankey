//
//  UIViewController+Utils.swift
//  AppBankey
//
//  Created by Arilson Silva on 24/07/26.
//

import UIKit

extension UIViewController {
    func statusBar() {
        let navBarAppearance = UINavigationBarAppearance ()
        navBarAppearance.configureWithTransparentBackground ( ) // para ocultar também a linha da barra de navegação
        navBarAppearance.backgroundColor = appColor
        UINavigationBar.appearance ( ) . standardAppearance = navBarAppearance
        UINavigationBar.appearance ( ) . scrollEdgeAppearance = navBarAppearance
    }
    
    func setTabBarImage(imageName: String, title: String){
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
