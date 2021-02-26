//
//  TabBarVC.swift
//  MySpotify
//
//  Created by Aleksey Kabishau on 2/25/21.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeVC = HomeVC()
        let searchVC = SearchVC()
        let libraryVC = LibraryVC()
        
        let homeNC = UINavigationController(rootViewController: homeVC)
        let searchNC = UINavigationController(rootViewController: searchVC)
        let libraryNC = UINavigationController(rootViewController: libraryVC)
        
        
        homeVC.title = "Home"
        searchVC.title = "Search"
        libraryVC.title = "Library"
        
        
        homeVC.view.backgroundColor = .systemBackground
        searchVC.view.backgroundColor = .systemBackground
        libraryVC.view.backgroundColor = .systemBackground
        
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        homeNC.navigationBar.prefersLargeTitles = true
        
        searchVC.navigationItem.largeTitleDisplayMode = .always
        searchNC.navigationBar.prefersLargeTitles = true
        
        libraryVC.navigationItem.largeTitleDisplayMode = .always
        libraryNC.navigationBar.prefersLargeTitles = true
        
        
        homeNC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        searchNC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        libraryNC.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 0)
        
        setViewControllers([homeNC, searchNC, libraryNC], animated: true)
    }
}
