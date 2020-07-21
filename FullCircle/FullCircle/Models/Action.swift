//
//  Action.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct Action: Codable {
    let id: String
    let name: String
    let description: String
    let organizationID: String
    let engagementLevel: EngagementLevel
    let actionURL: String
    let imageURL: String //Stored in Assets folder, refactor to imageURL
    let actionType: ActionType
    
    init(id: String ,name: String, description: String, organizationID: String, engagementLevel: EngagementLevel, imageURL: String, iconString: String, actionType: ActionType) {
        self.id = "a-\(UUID().description)"
        self.name = name
        self.description = description
        self.organizationID = organizationID
        self.engagementLevel = engagementLevel
        self.actionURL = imageURL
        self.imageURL = iconString
        self.actionType = actionType
    }
}

enum EngagementLevel: String, Codable {
    case easy
    case medium
    case hard
}

enum ActionType: String, Codable {
    case email
    case protest
    case donate
    case phone
    case petition
}

//TODO: Remove global property once actions are pulled from FB
var allActions = [Action]()

