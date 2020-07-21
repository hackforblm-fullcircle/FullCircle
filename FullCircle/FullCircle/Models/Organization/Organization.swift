//
//  Organization.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct Organization: Codable {
    let id: String
    let name: String
    let description: String
    let address: String
    let phone: String
    let email: String
    let websiteURL: String
    let donateURL: String
    let imageURL: String
    let organizationType: OrganizationType
    let actions: [Action]
    
    init(id: String, name: String, description: String, address: String, phone: String, email: String, websiteURL: String, donateURL: String, imageURL: String, organizationType: OrganizationType, actions: [Action]) {
        self.id = "organization-\(UUID().description)"
        self.name = name
        self.description = description
        self.address = address
        self.phone = phone
        self.email = email
        self.websiteURL = websiteURL
        self.donateURL = donateURL
        self.imageURL = imageURL
        self.organizationType = organizationType
        self.actions = actions
    }
}
