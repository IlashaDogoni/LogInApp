//
//  User.swift
//  LogInApp
//
//  Created by Ilya Kokorin on 03.12.2021.
//

import Foundation
struct User {
    let login: String
    let password: String
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password"
        )
    }
}
