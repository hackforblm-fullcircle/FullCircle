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
    let organizationName: String
    let actionURL: String
    let imageURL: String
    let engagementLevel: EngagementLevel
    let actionType: ActionType
    let startDate: Date
    let endDate: Date
    let timelineType: TimelineType
    let actionMeta: [String : Any]
    
    init?(from dict: [String: Any], id: String) {
        guard let name = dict["name"] as? String,
            let description = dict["description"] as? String,
            let organizationID = dict["organizationID"] as? String,
            let organizationName = dict["organizationName"] as? String,
            let imageURL = dict["imageURL"] as? String,
            let actionURL = dict["actionURL"] as? String,
            let level = dict["engagementLevel"] as? String,
            let engagementLevel =  EngagementLevel(rawValue: level),
            let type = dict["actionType"] as? String,
            let actionType = ActionType(rawValue: type),
            let startDate = dict["startDate"] as? Date,
            let endDate = dict["endDate"] as? Date,
            let timeType = dict["timelineType"] as? String,
            let timelineType = TimelineType(rawValue: timeType),
            let actionMeta = dict["actionMeta"] as? [String : Any] else { return nil }
        
        self.id = id
        self.name = name
        self.description = description
        self.organizationID = organizationID
        self.organizationName = organizationName
        self.imageURL = imageURL
        self.actionURL = actionURL
        self.engagementLevel = engagementLevel
        self.actionType = actionType
        self.startDate = startDate
        self.endDate = endDate
        self.timelineType = timelineType
        self.actionMeta = actionMeta
    }

    enum EngagementLevel: String {
        case easy
        case medium
        case hard
    }

    enum ActionType: String {
        case email
        case protest
        case donate
        case phone
        case petition
    }
}

