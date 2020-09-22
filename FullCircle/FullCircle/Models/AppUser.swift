//
//  AppUser.swift
//  FullCircle
//
//  Created by Sunni Tang on 7/28/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

struct AppUser {
    // FirebaseAuth user properties
    let id: String
    let email: String?
    let userName: String?
    let dateCreated: Date?
    let photoURL: String?
    
    // Additional AppUser properties
    let zipCode: Int?
    let causes: [String]    // String desc of Cause cases
    let userActions: [String]   // array of UserAction id's
    let followedOrganizations: [String] // array of Organization id's
    let friends: [String]   // array of user id's?
    //TODO: Add goal property
    
    // Initializers
    init(user: User, zipCode: Int? = nil, causes: [String] = [], userActions: [String] = [], followedOrganizations: [String] = [], friends: [String] = []) {
        self.id = user.uid
        self.email = user.email
        self.userName = user.displayName
        self.dateCreated = user.metadata.creationDate
        self.photoURL = user.photoURL?.absoluteString
        
        self.zipCode = zipCode  // input during signup?
        self.userActions = userActions
        self.followedOrganizations = followedOrganizations
        self.causes = causes    // input during signup/onboarding?
        self.friends = friends
    }
    
    var fieldsDict: [String: Any] {
            return [
                "userName": self.userName ?? "",
                "email": self.email ?? ""
            ]
        }
}

