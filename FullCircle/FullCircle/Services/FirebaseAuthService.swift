//
//  FirebaseAuthService.swift
//  FullCircle
//
//  Created by David Rifkin on 9/22/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation
import FirebaseAuth

class FirebaseAuthService {
    static let manager = FirebaseAuthService()
    
    private let auth = Auth.auth()

    var currentUser: User? {
        return auth.currentUser
    }
    
    func createNewUser(email: String, password: String, completion: @escaping (Result<User,Error>) -> ()) {
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if let createdUser = result?.user {
                completion(.success(createdUser))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }
    
    func loginUser(email: String, password: String, completion: @escaping (Result<(), Error>) -> ()) {
        auth.signIn(withEmail: email, password: password) { (result, error) in
            if let _ = result?.user {
                completion(.success(()))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }

    private init () {}
}
