//
//  AppDelegate.swift
//  MySpotify
//
//  Created by Aleksey Kabishau on 2/22/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
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
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
}

