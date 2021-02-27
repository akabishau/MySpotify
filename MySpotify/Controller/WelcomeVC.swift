//
//  WelcomeVC.swift
//  MySpotify
//
//  Created by Aleksey Kabishau on 2/25/21.
//

import UIKit

class WelcomeVC: UIViewController {
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign in with Spotify", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(
            x: 20,
            y: view.height - 50 - view.safeAreaInsets.bottom,
            width: view.width - 40,
            height: 50)
    }
    
    
    @objc private func didTapSignIn() {
        let authVC = AuthVC()
        authVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(authVC, animated: true)
    }
    
}
