//
//  Organization.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct Organization {
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
    //TODO: Link Action with Organization by Organization ID
     var actions: [Action]

    init?(from dict: [String: Any], id: String) {
        guard let name = dict["name"] as? String,
            let description = dict["description"] as? String,
            let address = dict["address"] as? String,
            let phone = dict["phone"] as? String,
            let email = dict["email"] as? String,
            let websiteURL = dict["website"] as? String,
            let donateURL = dict["donateURL"] as? String,
            let logoImageURL = dict["logoString"] as? String,
            let type = dict["type"] as? String,
            let organizationType = OrganizationType(rawValue: type)
            else { return nil }
        self.id = id
        self.name = name
        self.description = description
        self.address = address
        self.phone = phone
        self.email = email
        self.websiteURL = websiteURL
        self.donateURL = donateURL
        self.imageURL = logoImageURL
        self.organizationType = organizationType
        actions = []
    }

    enum OrganizationType: String {
        case movement
        case nonprofit
        case forProfit
        case lobby
        case academic
        case individual
    }
    
}
