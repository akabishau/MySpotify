//
//  AuthManager.swift
//  MySpotify
//
//  Created by Aleksey Kabishau on 2/25/21.
//

import Foundation

final class AuthManager {
    
    static let shared = AuthManager()
    private init() { }
    
    var isSignedIn: Bool {
        return false
    }

}
