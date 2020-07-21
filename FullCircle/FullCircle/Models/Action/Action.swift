//
//  Action.swift
//  FullCircle
//
//  Created by Sunni Tang on 6/12/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import Foundation

struct Action {
    let id: String
    let name: String
    let description: String
    let organizationID: String
    let actionURL: String
    let imageURL: String
    let engagementLevel: EngagementLevel
    let actionType: ActionType
    let actionMeta: [String : Any]
    
    init(id: String ,name: String, description: String, organizationID: String, imageURL: String, iconString: String, engagementLevel: EngagementLevel, actionType: ActionType, actionMeta: [String : Any]) {
        self.id = "action-\(UUID().description)"
        self.name = name
        self.description = description
        self.organizationID = organizationID
        self.actionURL = imageURL
        self.imageURL = iconString
        self.engagementLevel = engagementLevel
        self.actionType = actionType
        self.actionMeta = actionMeta
    }
}

