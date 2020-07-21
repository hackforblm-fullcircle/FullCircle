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
    let type: OrganizationType
    var actions: [Action]
    
}

enum OrganizationType: String, Codable {
    case movement
    case nonprofit
    case forProfit
    case lobby
    case academic
    case individual
}
