//
//  SceneDelegate.swift
//  MySpotify
//
//  Created by Aleksey Kabishau on 2/22/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        if AuthManager.shared.isSignedIn {
            window.rootViewController = TabBarVC()
        } else {
            let navigationController = UINavigationController(rootViewController: WelcomeVC())
            navigationController.navigationBar.prefersLargeTitles = true
            navigationController.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
            window.rootViewController = navigationController
        }
        window.makeKeyAndVisible()
        self.window = window
    }

    
    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}

